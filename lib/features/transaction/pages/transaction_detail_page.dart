import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sewa_barang_client/core/config/injector.dart';
import 'package:sewa_barang_client/core/models/models.dart';
import 'package:sewa_barang_client/core/repositories/repositories.dart';
import 'package:sewa_barang_client/core/routers/routers.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';
import 'package:sewa_barang_client/core/style/app_text_styles.dart';
import 'package:sewa_barang_client/core/utils/datetime_utils.dart';
import 'package:sewa_barang_client/core/utils/format_trx.dart';
import 'package:sewa_barang_client/core/utils/string_utils.dart';
import 'package:sewa_barang_client/core/widgets/outlined_card.dart';

class TransactionDetailPage extends StatefulWidget {
  final int id;
  const TransactionDetailPage({super.key, required this.id});
  @override
  State<TransactionDetailPage> createState() => _TransactionDetailPageState();
}

class _TransactionDetailPageState extends State<TransactionDetailPage> {
  RentTransactionModel? _data;
  bool _loading = true;
  String? _error;
  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final repo = getIt<TransactionRepository>();
      final d = await repo.getTransactionFromRemote(widget.id);
      setState(() {
        _data = d;
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(formatTRX(widget.id))),
        body: _loading
            ? const Center(child: CircularProgressIndicator())
            : _error != null
                ? Center(child: Text(_error!))
                : _buildBody());
  }

  Widget _buildBody() {
    final m = _data!;
    final canReturn = m.status == RentTransactionStatus.rented ||
        m.status == RentTransactionStatus.overdue;
    Widget field(String label, String value) =>
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(label, style: AppTextStyles.poppinsSmRegularNeutral4),
          const SizedBox(height: 2),
          Text(value, style: AppTextStyles.poppinsSmSemiBoldBlack)
        ]);
    Widget proof(String label, String? url) => OutlinedCard(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
              Text(label, style: AppTextStyles.poppinsSmRegularNeutral4),
              url != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                          imageUrl: url,
                          height: 180,
                          width: double.infinity,
                          fit: BoxFit.cover))
                  : Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.neutral1,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(child: Text('- tidak ada -')))
            ]));
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(spacing: 12, children: [
          OutlinedCard(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 12,
                  children: [
                Row(children: [
                  Expanded(child: field('ID Transaksi', formatTRX(m.id))),
                  Expanded(child: field('Status', m.status?.displayName ?? '-'))
                ]),
                Row(children: [
                  Expanded(child: field('Penyewa', m.renterName)),
                  Expanded(child: field('HP', m.renterPhone))
                ]),
                Row(children: [
                  Expanded(child: field('Region', m.region?.name ?? '-')),
                  Expanded(child: field('Qty', '${m.qty}'))
                ]),
                Row(children: [
                  Expanded(
                      child: field(
                          'Harga Sewa',
                          StringUtil.formatCurrencyIdr(
                              m.rentPrice.toDouble()))),
                  Expanded(
                      child: field(
                          'Total',
                          StringUtil.formatCurrencyIdr(
                              (m.qty * m.rentPrice).toDouble())))
                ]),
                Row(children: [
                  Expanded(child: field('Tgl Sewa', m.rentDate.dMMMMyyyy())),
                  Expanded(
                      child: field(
                          'Estimasi Kembali', m.expectedReturnDate.dMMMMyyyy()))
                ]),
                Row(children: [
                  Expanded(
                      child: field('Tgl Kembali Aktual',
                          m.returnDate?.dMMMMyyyy() ?? '-')),
                ]),
                field('Kategori', m.product?.categoryName ?? '-'),
                field('Catatan', m.notes ?? '-'),
              ])),
          Row(spacing: 12, children: [
            Expanded(child: proof('Pickup Proof', m.pickupProofUrl)),
            Expanded(child: proof('Return Proof', m.returnProofUrl))
          ]),
          if (canReturn)
            SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    icon: const Icon(Icons.assignment_return),
                    label: const Text('Kembalikan Barang'),
                    onPressed: () => GoRouter.of(context)
                        .push('${RouterConstans.returnForm}/${m.id}')
                        .then((_) => _load()))),
        ]));
  }
}
