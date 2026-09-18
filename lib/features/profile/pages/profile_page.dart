import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/config/injector.dart';
import 'package:sewa_barang_client/core/repositories/repositories.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';
import 'package:sewa_barang_client/core/style/app_text_styles.dart';
import 'package:sewa_barang_client/core/utils/string_utils.dart';
import 'package:sewa_barang_client/core/widgets/app_bar.dart';
import 'package:sewa_barang_client/core/widgets/app_button.dart';
import 'package:sewa_barang_client/core/widgets/chip_widget.dart';
import 'package:sewa_barang_client/core/widgets/outlined_card.dart';
import 'package:sewa_barang_client/features/auth/blocs/auth/auth_cubit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? _regionName;
  bool _regionLoading = true;

  @override
  void initState() {
    super.initState();
    _loadRegion();
  }

  Future<void> _loadRegion() async {
    try {
      final user = getIt<AuthCubbit>().state.data;
      if (user == null) {
        if (mounted) setState(() => _regionLoading = false);
        return;
      }
      final regions =
          await getIt<TransactionRepository>().getRegionsFromRemote();
      final match = regions?.where((r) => r.id == user.regionId).toList();
      if (!mounted) return;
      setState(() {
        _regionName =
            match != null && match.isNotEmpty ? match.first.name : null;
        _regionLoading = false;
      });
    } catch (_) {
      if (mounted) setState(() => _regionLoading = false);
    }
  }

  Future<void> _confirmLogout() async {
    final confirmed = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                title: const Row(spacing: 8, children: [
                  Icon(Icons.warning, color: AppColors.warningBase),
                  Expanded(child: Text('Keluar dari akun?')),
                ]),
                content: const Text(
                    'Anda harus login kembali untuk memakai aplikasi.'),
                actions: [
                  AppButton(
                      label: 'Batal',
                      variant: AppButtonVariant.outlined,
                      onPressed: () => Navigator.of(ctx).pop(false)),
                  AppButton(
                      label: 'Ya, Keluar',
                      variant: AppButtonVariant.danger,
                      onPressed: () => Navigator.of(ctx).pop(true)),
                ]));
    if (confirmed == true) {
      getIt<AuthCubbit>().unAuthenticated();
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = getIt<AuthCubbit>().state.data;
    return Scaffold(
        appBar: AppBarBase(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                icon: const Icon(Icons.logout, color: AppColors.black),
                tooltip: 'Keluar',
                onPressed: _confirmLogout),
          ],
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(spacing: 12, children: [
              const SizedBox(height: 8),
              CircleAvatar(
                  radius: 44,
                  backgroundColor: AppColors.primary2,
                  child: Text(StringUtil.getInitials(user?.name ?? '?') ?? '?',
                      style: AppTextStyles.poppinsXlBoldNeutral6)),
              Text(user?.name ?? '-',
                  style: AppTextStyles.poppinsXlBoldNeutral6),
              Text(user?.email ?? '-',
                  style: AppTextStyles.poppinsSmRegularNeutral4),
              ChipWidget(
                  variant: ChipWidgetVariant.primary,
                  label: (user?.role ?? 'user').toUpperCase()),
              OutlinedCard(
                  child: Column(spacing: 12, children: [
                _row('User ID', '${user?.id ?? '-'}'),
                const Divider(height: 1),
                _row('Email', user?.email ?? '-'),
                const Divider(height: 1),
                _row('Role', (user?.role ?? '-').toUpperCase()),
                const Divider(height: 1),
                _row(
                    'Region',
                    _regionLoading
                        ? 'Memuat...'
                        : (_regionName ?? 'ID ${user?.regionId ?? '-'}')),
              ])),
            ])));
  }

  Widget _row(String label, String value) =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(label, style: AppTextStyles.poppinsSmRegularNeutral4),
        Flexible(
            child: Text(value,
                style: AppTextStyles.poppinsSmSemiBoldBlack,
                textAlign: TextAlign.right)),
      ]);
}
