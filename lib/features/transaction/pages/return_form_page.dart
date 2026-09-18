import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sewa_barang_client/core/config/injector.dart';
import 'package:sewa_barang_client/core/repositories/repositories.dart';
import 'package:sewa_barang_client/core/widgets/app_bar.dart';
import 'package:sewa_barang_client/core/widgets/app_button.dart';
import 'package:sewa_barang_client/core/widgets/app_snackbar.dart';
import 'package:sewa_barang_client/features/transaction/blocs/return_form/return_form_bloc.dart';
import 'package:sewa_barang_client/features/transaction/blocs/return_transaction/return_transaction_bloc.dart';

class ReturnFormPage extends StatelessWidget {
  final int id;
  const ReturnFormPage({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => ReturnFormBloc()),
      BlocProvider(
          create: (_) => ReturnTransactionBloc(getIt<TransactionRepository>())),
    ], child: ReturnFormContent(id: id));
  }
}

class ReturnFormContent extends StatefulWidget {
  final int id;
  const ReturnFormContent({super.key, required this.id});
  @override
  State<ReturnFormContent> createState() => _ReturnFormContentState();
}

class _ReturnFormContentState extends State<ReturnFormContent> {
  XFile? _file;
  final _picker = ImagePicker();
  Future<void> _pick() async {
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
    if (f != null) setState(() => _file = f);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReturnTransactionBloc, ReturnTransactionState>(
        listener: (c, s) {
          if (s.status == ReturnTransactionStatus.loading) {
            context.loaderOverlay.show();
          } else {
            context.loaderOverlay.hide();
          }
          if (s.status == ReturnTransactionStatus.success) {
            showTopSuccess(context, 'Pengembalian berhasil');
            context.pop();
          }
          if (s.status == ReturnTransactionStatus.failure) {
            showTopError(context, s.error.toString());
          }
        },
        child: Scaffold(
            appBar:
                AppBarBase(title: Text('Pengembalian #${widget.id}')),
            body: BlocBuilder<ReturnFormBloc, ReturnFormState>(
                builder: (context, form) {
              final returnDate = form.returnDate ?? DateTime.now();
              final canSubmit =
                  form.formzStatus.isValid && _file != null;
              return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(spacing: 12, children: [
                    InkWell(
                        onTap: () async {
                          final formBloc = context.read<ReturnFormBloc>();
                          final d = await showDatePicker(
                              context: context,
                              initialDate: returnDate,
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2099));
                          if (d != null) {
                            formBloc.add(
                                ReturnFormEvent.changeReturnDate(
                                    returnDate: d));
                          }
                        },
                        child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(
                                'Tanggal Kembali: ${DateFormat('dd MMM yyyy').format(returnDate)}'))),
                    InkWell(
                        onTap: _pick,
                        child: Container(
                            width: double.infinity,
                            height: 180,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: _file == null
                                ? const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Icon(Icons.camera_alt, size: 32),
                                        Text('Foto Bukti Pengembalian * wajib')
                                      ])
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.file(File(_file!.path),
                                        fit: BoxFit.cover,
                                        width: double.infinity)))),
                    AppButton(
                        label: 'Konfirmasi Kembalikan',
                        icon: Icons.check,
                        fullWidth: true,
                        onPressed: canSubmit
                            ? () {
                                context
                                    .read<ReturnTransactionBloc>()
                                    .add(ReturnTransactionEvent.submit(
                                        id: widget.id,
                                        returnDate: returnDate,
                                        returnProofPath: _file!.path));
                              }
                            : null),
                  ]));
            })));
  }
}
