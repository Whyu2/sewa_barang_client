import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sewa_barang_client/core/config/injector.dart';
import 'package:sewa_barang_client/core/form/int_form.dart';
import 'package:sewa_barang_client/core/form/string_form.dart';
import 'package:sewa_barang_client/core/models/models.dart';
import 'package:sewa_barang_client/core/repositories/repositories.dart';
import 'package:sewa_barang_client/core/routers/routers.dart';
import 'package:sewa_barang_client/core/storage/scure_storage_service.dart';
import 'package:sewa_barang_client/core/utils/image_url_utils.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';
import 'package:sewa_barang_client/core/style/app_text_styles.dart';
import 'package:sewa_barang_client/core/widgets/app_bar.dart';
import 'package:sewa_barang_client/core/widgets/app_button.dart';
import 'package:sewa_barang_client/core/widgets/app_snackbar.dart';
import 'package:sewa_barang_client/core/widgets/chip_widget.dart';
import 'package:sewa_barang_client/core/widgets/outlined_card.dart';
import 'package:sewa_barang_client/core/widgets/text_input_field.dart';
import 'package:sewa_barang_client/features/rent/blocs/rent_form/rent_form_bloc.dart';
import 'package:sewa_barang_client/features/transaction/blocs/create_transaction/create_transaction_bloc.dart';

class RentFormPage extends StatelessWidget {
  final String code;
  const RentFormPage({super.key, required this.code});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => RentFormBloc()),
      BlocProvider(
          create: (_) => CreateTransactionBloc(getIt<TransactionRepository>())),
    ], child: RentFormPageContent(code: code));
  }
}

class RentFormPageContent extends StatefulWidget {
  final String code;
  const RentFormPageContent({super.key, required this.code});
  @override
  State<RentFormPageContent> createState() => _RentFormPageContentState();
}

class _RentFormPageContentState extends State<RentFormPageContent> {
  XFile? _pickupFile;
  final _picker = ImagePicker();
  final _rentDateCtrl = TextEditingController();
  final _expectedCtrl = TextEditingController();

  ProductModel? _product;
  bool _productLoading = true;
  String? _productError;

  @override
  void initState() {
    super.initState();
    _rentDateCtrl.text = DateFormat('dd MMM yyyy').format(DateTime.now());
    _expectedCtrl.text = '-';
    _loadProduct();
  }

  @override
  void dispose() {
    _rentDateCtrl.dispose();
    _expectedCtrl.dispose();
    super.dispose();
  }

  Future<void> _loadProduct() async {
    setState(() {
      _productLoading = true;
      _productError = null;
    });
    try {
      final repo = getIt<ProductRepository>();
      final p = await repo.getProductByQrFromRemote(widget.code);
      if (!mounted) return;
      setState(() {
        _product = p;
        _productLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _productError = e.toString();
        _productLoading = false;
      });
    }
  }

  Future<void> _pickImage() async {
    final src = await showModalBottomSheet<ImageSource>(
        context: context,
        builder: (_) => SafeArea(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
              ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: const Text('Kamera'),
                  onTap: () => Navigator.pop(context, ImageSource.camera)),
              ListTile(
                  leading: const Icon(Icons.photo),
                  title: const Text('Galeri'),
                  onTap: () => Navigator.pop(context, ImageSource.gallery))
            ])));
    if (src == null) return;
    final f = await _picker.pickImage(source: src, imageQuality: 80);
    if (f != null) setState(() => _pickupFile = f);
  }

  String _expectedText(RentFormState form) {
    final days = form.rentalDuration.intValue ?? 0;
    final rent = form.rentDate ?? DateTime.now();
    if (days < 1) return '-';
    final base = DateTime(rent.year, rent.month, rent.day);
    return DateFormat('dd MMM yyyy').format(base.add(Duration(days: days)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateTransactionBloc, CreateTransactionState>(
        listener: (c, s) {
          if (s.status == CreateTransactionStatus.loading) {
            context.loaderOverlay.show();
          } else {
            context.loaderOverlay.hide();
          }
          if (s.status == CreateTransactionStatus.success) {
            showTopSuccess(context, 'Transaksi berhasil');
            final created = s.data;
            final newId =
                created is RentTransactionModel ? created.id : null;
            if (newId != null) {
              GoRouter.of(context).pushReplacement(
                  '${RouterConstans.transactionDetail}/$newId');
            } else {
              GoRouter.of(context).go(RouterConstans.home);
            }
          }
          if (s.status == CreateTransactionStatus.failure) {
            showTopError(context, s.error.toString());
          }
        },
        child: Scaffold(
            appBar: AppBarBase(
                leading: AppBackButton(
                    onPressed: () =>
                        GoRouter.of(context).go(RouterConstans.home)),
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_product?.name ?? 'Form Sewa',
                          style: AppTextStyles.poppinsMdSemiBoldBlack),
                      Text('QR: ${widget.code}',
                          style: AppTextStyles.poppinsSmRegularNeutral4),
                    ])),
            body: BlocBuilder<RentFormBloc, RentFormState>(
                builder: (context, form) => _buildBody(form))));
  }

  Widget _sectionTitle(String title) => Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(title, style: AppTextStyles.poppinsMdSemiBoldBlack));

  Widget _field(String label, String value) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(label, style: AppTextStyles.poppinsSmRegularNeutral4),
        const SizedBox(height: 2),
        Text(value, style: AppTextStyles.poppinsSmSemiBoldBlack)
      ]);

  ChipWidgetVariant _statusVariant(String status) {
    switch (status.toLowerCase()) {
      case 'available':
      case 'tersedia':
        return ChipWidgetVariant.primary;
      case 'rented':
      case 'disewa':
      case 'maintenance':
        return ChipWidgetVariant.warning;
      default:
        return ChipWidgetVariant.warning;
    }
  }

  Widget _buildProductSection() {
    if (_productLoading) {
      return const OutlinedCard(
          child: Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: CircularProgressIndicator())));
    }
    if (_productError != null || _product == null) {
      return OutlinedCard(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
            Text('Produk tidak ditemukan',
                style: AppTextStyles.poppinsMdSemiBoldBlack),
            Text(_productError ?? 'QR tidak dikenal',
                style: AppTextStyles.poppinsSmRegularNeutral4),
            AppButton(
                label: 'Coba Lagi',
                icon: Icons.refresh,
                variant: AppButtonVariant.outlined,
                fullWidth: true,
                onPressed: _loadProduct),
          ]));
    }
    final p = _product!;
    return OutlinedCard(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: p.photoUrl != null
                        ? CachedNetworkImage(
                            imageUrl:
                                resolveApiImageUrl(p.photoUrl!) ?? '',
                            height: 96,
                            width: 96,
                            fit: BoxFit.cover,
                            errorWidget: (_, __, ___) => Container(
                                height: 96,
                                width: 96,
                                color: AppColors.neutral1,
                                child: const Icon(Icons.inventory_2,
                                    size: 40, color: AppColors.neutral3)))
                        : Container(
                            height: 96,
                            width: 96,
                            color: AppColors.neutral1,
                            child: const Icon(Icons.inventory_2,
                                size: 40, color: AppColors.neutral3))),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 4,
                        children: [
                      Text(p.name, style: AppTextStyles.poppinsMdSemiBoldBlack),
                      Text(p.categoryName,
                          style: AppTextStyles.poppinsSmRegularNeutral4),
                      ChipWidget(
                          variant: _statusVariant(p.status), label: p.status),
                    ])),
              ]),
          const Divider(height: 1),
          _field('Deskripsi', p.description ?? '-'),
          _field('QR UUID', p.qrUuid),
        ]));
  }

  Widget _buildBody(RentFormState form) {
    final rentFormBloc = context.read<RentFormBloc>();
    final rentDate = form.rentDate ?? DateTime.now();
    _rentDateCtrl.text = DateFormat('dd MMM yyyy').format(rentDate);
    _expectedCtrl.text = _expectedText(form);
    final canSubmit = form.formzStatus.isValid &&
        _pickupFile != null &&
        !_productLoading &&
        _product != null;
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              _buildProductSection(),
              OutlinedCard(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    _sectionTitle('Data Penyewa'),
                    TextInputField(
                        label: 'Nama Penyewa *',
                        errorText: form.renterName.error?.getMessage(
                          form.renterName.invalid && !form.renterName.pure,
                          label: 'Nama Penyewa',
                        ),
                        onChanged: (v) => rentFormBloc.add(
                            RentFormEvent.changeRenterName(renterName: v))),
                    const SizedBox(height: 8),
                    TextInputField(
                        label: 'No Hp Penyewa',
                        keyboardType: TextInputType.phone,
                        errorText: form.renterPhone.error?.getMessage(
                          form.renterPhone.invalid && !form.renterPhone.pure,
                          label: 'No Hp Penyewa',
                        ),
                        onChanged: (v) => rentFormBloc.add(
                            RentFormEvent.changeRenterPhone(renterPhone: v))),
                  ])),
              OutlinedCard(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    _sectionTitle('Detail Sewa'),
                    TextInputField(
                        label: 'Harga Sewa *',
                        keyboardType: TextInputType.number,
                        errorText: form.rentPrice.error?.getMessage(
                          form.rentPrice.invalid && !form.rentPrice.pure,
                          label: 'Harga Sewa',
                          min: 0,
                        ),
                        onChanged: (v) => rentFormBloc
                            .add(RentFormEvent.changeRentPrice(rentPrice: v))),
                    const SizedBox(height: 8),
                    TextInputField(
                        label: 'QTY *',
                        initialValue: '1',
                        keyboardType: TextInputType.number,
                        errorText: form.qty.error?.getMessage(
                          form.qty.invalid && !form.qty.pure,
                          label: 'QTY',
                          min: 1,
                        ),
                        onChanged: (v) =>
                            rentFormBloc.add(RentFormEvent.changeQty(qty: v))),
                    const SizedBox(height: 8),
                    TextInputField(
                        label: 'Tanggal Sewa',
                        controller: _rentDateCtrl,
                        readOnly: true,
                        onTap: () async {
                          final formBloc = context.read<RentFormBloc>();
                          final d = await showDatePicker(
                              context: context,
                              initialDate: rentDate,
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2099));
                          if (d != null) {
                            formBloc
                                .add(RentFormEvent.changeRentDate(rentDate: d));
                          }
                        }),
                    const SizedBox(height: 8),
                    TextInputField(
                        label: 'Sewa Berapa Lama? (hari) *',
                        initialValue: '1',
                        keyboardType: TextInputType.number,
                        errorText: form.rentalDuration.error?.getMessage(
                          form.rentalDuration.invalid &&
                              !form.rentalDuration.pure,
                          label: 'Lama sewa',
                          min: 1,
                        ),
                        onChanged: (v) => rentFormBloc.add(
                            RentFormEvent.changeRentalDuration(
                                rentalDuration: v))),
                    const SizedBox(height: 8),
                    TextInputField(
                        label: 'Estimasi Pengembalian',
                        controller: _expectedCtrl,
                        readOnly: true,
                        enabled: false),
                    const SizedBox(height: 4),
                    const Text('Otomatis: tanggal sewa + lama sewa',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ])),
              OutlinedCard(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    _sectionTitle('Catatan & Bukti Pengambilan'),
                    TextInputField(
                        label: 'Catatan',
                        maxLines: 2,
                        onChanged: (v) => rentFormBloc
                            .add(RentFormEvent.changeNotes(notes: v))),
                    const SizedBox(height: 8),
                    InkWell(
                        onTap: _pickImage,
                        child: Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: _pickupFile == null
                                ? const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Icon(Icons.camera_alt, size: 32),
                                        SizedBox(height: 4),
                                        Text('Foto Bukti Pengambilan * wajib')
                                      ])
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.file(File(_pickupFile!.path),
                                        fit: BoxFit.cover,
                                        width: double.infinity)))),
                    if (_pickupFile != null)
                      Align(
                          alignment: Alignment.centerRight,
                          child: AppButton(
                              label: 'Ganti Foto',
                              icon: Icons.refresh,
                              variant: AppButtonVariant.text,
                              onPressed: _pickImage)),
                  ])),
              AppButton(
                  label: 'Simpan',
                  icon: Icons.save,
                  fullWidth: true,
                  onPressed: canSubmit ? _submit : null),
              if (_product == null && !_productLoading)
                const Center(
                    child: Text(
                        'Muat data produk terlebih dahulu untuk menyimpan',
                        style: TextStyle(fontSize: 12, color: Colors.grey))),
              const SizedBox(height: 8),
            ]));
  }

  Future<void> _submit() async {
    final form = context.read<RentFormBloc>().state;
    if (_product == null || _pickupFile == null) return;
    final durationDays = form.rentalDuration.intValue ?? 0;
    final qty = form.qty.intValue ?? 0;
    final price = form.rentPrice.intValue ?? 0;
    final storage = getIt<SecureStorageService>();
    final userJson = await storage.read('user');
    int regionId = 1;
    try {
      if (userJson != null) {
        final m = RegExp(r'"region_id":\s*(\d+)').firstMatch(userJson);
        if (m != null) regionId = int.parse(m.group(1)!);
      }
    } catch (_) {}
    if (!mounted) return;
    context.read<CreateTransactionBloc>().add(CreateTransactionEvent.submit(
        qrUuid: widget.code,
        regionId: regionId,
        renterName: form.renterName.value ?? '',
        renterPhone: form.renterPhone.value ?? '',
        rentDate: form.rentDate ?? DateTime.now(),
        rentalDurationDays: durationDays,
        qty: qty,
        rentPrice: price,
        pickupProofPath: _pickupFile!.path,
        notes: (form.notes.value?.isEmpty ?? true) ? null : form.notes.value));
  }
}
