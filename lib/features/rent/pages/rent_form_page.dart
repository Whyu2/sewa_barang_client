import 'dart:io';
import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sewa_barang_client/core/config/injector.dart';
import 'package:sewa_barang_client/core/repositories/repositories.dart';
import 'package:sewa_barang_client/core/routers/routers.dart';
import 'package:sewa_barang_client/core/storage/scure_storage_service.dart';
import 'package:sewa_barang_client/core/widgets/text_input_field.dart';
import 'package:sewa_barang_client/features/transaction/blocs/create_transaction/create_transaction_bloc.dart';

class RentFormPage extends StatelessWidget {
  final String code;
  const RentFormPage({super.key, required this.code});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CreateTransactionBloc(getIt<TransactionRepository>()),
        child: RentFormPageContent(code: code));
  }
}

class RentFormPageContent extends StatefulWidget {
  final String code;
  const RentFormPageContent({super.key, required this.code});
  @override
  State<RentFormPageContent> createState() => _RentFormPageContentState();
}

class _RentFormPageContentState extends State<RentFormPageContent> {
  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _priceCtrl = TextEditingController();
  final _qtyCtrl = TextEditingController(text: '1');
  final _notesCtrl = TextEditingController();
  final _rentDateCtrl = TextEditingController();
  final _expectedCtrl = TextEditingController();
  DateTime _rentDate = DateTime.now();
  DateTime? _expectedDate;
  XFile? _pickupFile;
  final _picker = ImagePicker();
  @override
  void initState() {
    super.initState();
    _rentDateCtrl.text = DateFormat('dd MMM yyyy').format(_rentDate);
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
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Transaksi berhasil')));
            GoRouter.of(context).go(RouterConstans.home);
          }
          if (s.status == CreateTransactionStatus.failure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(s.error.toString())));
          }
        },
        child: Scaffold(
            appBar: AppBar(
                leading: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () =>
                        GoRouter.of(context).go(RouterConstans.home)),
                backgroundColor: Colors.white,
                title: Text('QR: ${widget.code}',
                    style: const TextStyle(fontSize: 12))),
            body: _buildBody()));
  }

  Widget _buildBody() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: <Widget>[
              const SizedBox(height: 8),
              Text('Masukkan Data Penyewa',
                  style: Theme.of(context).textTheme.titleMedium),
              Divider(color: Colors.grey.shade400),
              TextInputField(label: 'Nama Penyewa *', controller: _nameCtrl),
              TextInputField(
                  label: 'No Hp Penyewa',
                  controller: _phoneCtrl,
                  keyboardType: TextInputType.phone),
              TextInputField(
                  label: 'Tanggal Sewa',
                  controller: _rentDateCtrl,
                  readOnly: true,
                  onTap: () async {
                    final d = await showDatePickerDialog(
                        context: context,
                        minDate: DateTime(2020, 1, 1),
                        maxDate: DateTime(2099, 12, 31),
                        initialDate: _rentDate);
                    if (d != null) {
                      setState(() {
                        _rentDate = d;
                        _rentDateCtrl.text =
                            DateFormat('dd MMM yyyy').format(d);
                      });
                    }
                  }),
              TextInputField(
                  label: 'Harga Sewa *',
                  controller: _priceCtrl,
                  keyboardType: TextInputType.number),
              TextInputField(
                  label: 'QTY *',
                  controller: _qtyCtrl,
                  keyboardType: TextInputType.number),
              TextInputField(
                  label: 'Estimasi Pengembalian *',
                  controller: _expectedCtrl,
                  readOnly: true,
                  onTap: () async {
                    final d = await showDatePickerDialog(
                        context: context,
                        minDate: _rentDate,
                        maxDate: DateTime(2099, 12, 31),
                        initialDate: _expectedDate ??
                            _rentDate.add(const Duration(days: 1)));
                    if (d != null) {
                      setState(() {
                        _expectedDate = d;
                        _expectedCtrl.text =
                            DateFormat('dd MMM yyyy').format(d);
                      });
                    }
                  }),
              TextInputField(
                  label: 'Catatan', controller: _notesCtrl, maxLines: 2),
              InkWell(
                  onTap: _pickImage,
                  child: Container(
                      width: double.infinity,
                      height: 140,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)),
                      child: _pickupFile == null
                          ? const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  Icon(Icons.camera_alt, size: 32),
                                  Text('Foto Bukti Pengambilan * wajib')
                                ])
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.file(File(_pickupFile!.path),
                                  fit: BoxFit.cover, width: double.infinity)))),
              const SizedBox(height: 8),
              Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton.icon(
                      onPressed: _submit,
                      label: const Text('Simpan'),
                      icon: const Icon(Icons.save))),
              const SizedBox(height: 24),
            ])));
  }

  Future<void> _submit() async {
    if (_nameCtrl.text.isEmpty ||
        _priceCtrl.text.isEmpty ||
        _qtyCtrl.text.isEmpty ||
        _expectedDate == null ||
        _pickupFile == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Lengkapi field wajib & foto bukti pengambilan')));
      return;
    }
    final qty = int.tryParse(_qtyCtrl.text) ?? 0;
    final price = int.tryParse(_priceCtrl.text) ?? 0;
    if (qty <= 0) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('QTY harus >0')));
      return;
    }
    final storage = getIt<SecureStorageService>();
    final userJson = await storage.read('user');
    int regionId = 1;
    try {
      if (userJson != null) {
        final m = RegExp(r'"region_id":\s*(\d+)').firstMatch(userJson);
        if (m != null) regionId = int.parse(m.group(1)!);
      }
    } catch (_) {}
    context.read<CreateTransactionBloc>().add(CreateTransactionEvent.submit(
        qrUuid: widget.code,
        regionId: regionId,
        renterName: _nameCtrl.text,
        renterPhone: _phoneCtrl.text,
        rentDate: _rentDate,
        expectedReturnDate: _expectedDate!,
        qty: qty,
        rentPrice: price,
        pickupProofPath: _pickupFile!.path,
        notes: _notesCtrl.text.isEmpty ? null : _notesCtrl.text));
  }
}
