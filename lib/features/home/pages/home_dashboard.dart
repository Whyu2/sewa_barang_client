import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sewa_barang_client/core/config/injector.dart';
import 'package:sewa_barang_client/core/models/models.dart';
import 'package:sewa_barang_client/core/repositories/repositories.dart';
import 'package:sewa_barang_client/core/routers/routers.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';
import 'package:sewa_barang_client/core/style/app_text_styles.dart';
import 'package:sewa_barang_client/core/utils/datetime_utils.dart';
import 'package:sewa_barang_client/core/utils/string_utils.dart';
import 'package:sewa_barang_client/core/widgets/app_button.dart';
import 'package:sewa_barang_client/core/widgets/app_snackbar.dart';
import 'package:sewa_barang_client/core/widgets/chip_widget.dart';
import 'package:sewa_barang_client/core/widgets/outlined_card.dart';
import 'package:sewa_barang_client/features/auth/blocs/auth/auth_cubit.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  DashboardStatsModel? _stats;
  DashboardTables? _tables;
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load({bool silent = false}) async {
    if (!silent) {
      setState(() {
        _loading = true;
        _error = null;
      });
    }
    try {
      final repo = getIt<TransactionRepository>();
      final results = await Future.wait([
        repo.getDashboardStatsFromRemote(mine: true),
        repo.getDashboardTablesFromRemote(mine: true),
      ]);
      if (!mounted) return;
      setState(() {
        _stats = results[0] as DashboardStatsModel;
        _tables = results[1] as DashboardTables;
        _loading = false;
        _error = null;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = e.toString();
        _loading = false;
      });
      showTopError(context, e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_error != null && _stats == null) {
      return Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
            Text(_error!, style: AppTextStyles.poppinsSmRegularNeutral4),
            AppButton(
                label: 'Coba Lagi',
                icon: Icons.refresh,
                onPressed: () => _load()),
          ]));
    }
    final userName = getIt<AuthCubbit>().state.data?.name ?? 'Pengguna';
    final stats = _stats ?? DashboardStatsModel();
    final tables = _tables ?? const DashboardTables();
    return RefreshIndicator(
        onRefresh: () => _load(silent: true),
        child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text('Halo, $userName',
                      style: AppTextStyles.poppinsXlBoldNeutral6),
                  Text('Transaksi yang Anda buat',
                      style: AppTextStyles.poppinsMdRegularNeutral4),
                  GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 1.4,
                      children: [
                        _statCard('Disewa', '${stats.rented}',
                            Icons.shopping_bag, AppColors.info1),
                        _statCard('Terlambat', '${stats.overdue}',
                            Icons.warning, AppColors.warningBase),
                        _statCard(
                            'Total Transaksi',
                            '${stats.totalTransactions}',
                            Icons.receipt_long,
                            AppColors.primaryBase),
                        _statCard(
                            'Pendapatan',
                            StringUtil.formatCurrencyIdr(
                                stats.totalRevenue.toDouble()),
                            Icons.account_balance_wallet,
                            AppColors.successBase),
                      ]),
                  Row(spacing: 12, children: [
                    Expanded(
                        child: AppButton(
                            label: 'Scan Sewa',
                            icon: Icons.qr_code_scanner,
                            onPressed: () => GoRouter.of(context)
                                .push(RouterConstans.scan))),
                    Expanded(
                        child: AppButton(
                            label: 'Transaksi',
                            icon: Icons.receipt_long,
                            variant: AppButtonVariant.outlined,
                            onPressed: () => GoRouter.of(context)
                                .push(RouterConstans.transactionList))),
                  ]),
                  _sectionTitle('Perlu Perhatian (${tables.overdue.length})'),
                  if (tables.overdue.isEmpty)
                    const OutlinedCard(
                        child:
                            Center(child: Text('Tidak ada yang terlambat 🎉'))),
                  ...tables.overdue.map(_overdueRow),
                ])));
  }

  Widget _sectionTitle(String title) => Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Text(title, style: AppTextStyles.poppinsMdSemiBoldBlack));

  Widget _statCard(String label, String value, IconData icon, Color color) =>
      OutlinedCard(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Icon(icon, color: color, size: 22),
            const SizedBox(height: 4),
            FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(value,
                    style: AppTextStyles.poppinsLgBoldBlack, maxLines: 1)),
            Text(label,
                style: AppTextStyles.poppinsSmRegularNeutral4,
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
          ]));

  Widget _overdueRow(RentTransactionModel m) {
    final daysLate =
        DateTime.now().difference(m.expectedReturnDate).inDays.clamp(0, 9999);
    return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: InkWell(
            onTap: () => GoRouter.of(context)
                .push('${RouterConstans.transactionDetail}/${m.id}'),
            child: OutlinedCard(
                child: Row(spacing: 12, children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.warning5,
                      borderRadius: BorderRadius.circular(12)),
                  child:
                      const Icon(Icons.warning, color: AppColors.warningBase)),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 2,
                      children: [
                    Text(m.product?.name ?? '-',
                        style: AppTextStyles.poppinsSmSemiBoldBlack,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    Text(
                        '${m.renterName} • kembali ${m.expectedReturnDate.dMMMyyyy()}',
                        style: AppTextStyles.poppinsSmRegularNeutral4,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                  ])),
              ChipWidget(
                  variant: ChipWidgetVariant.warning, label: '$daysLate hari'),
            ]))));
  }
}
