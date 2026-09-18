// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardStatsModelImpl _$$DashboardStatsModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DashboardStatsModelImpl',
      json,
      ($checkedConvert) {
        final val = _$DashboardStatsModelImpl(
          totalProducts: $checkedConvert(
              'totalProducts', (v) => (v as num?)?.toInt() ?? 0),
          totalStockQty: $checkedConvert(
              'totalStockQty', (v) => (v as num?)?.toInt() ?? 0),
          available:
              $checkedConvert('available', (v) => (v as num?)?.toInt() ?? 0),
          broken: $checkedConvert('broken', (v) => (v as num?)?.toInt() ?? 0),
          totalTransactions: $checkedConvert(
              'totalTransactions', (v) => (v as num?)?.toInt() ?? 0),
          rented: $checkedConvert('rented', (v) => (v as num?)?.toInt() ?? 0),
          returned:
              $checkedConvert('returned', (v) => (v as num?)?.toInt() ?? 0),
          overdue: $checkedConvert('overdue', (v) => (v as num?)?.toInt() ?? 0),
          totalRevenue:
              $checkedConvert('totalRevenue', (v) => (v as num?)?.toInt() ?? 0),
          revenueThisMonth: $checkedConvert(
              'revenueThisMonth', (v) => (v as num?)?.toInt() ?? 0),
          totalRegions:
              $checkedConvert('totalRegions', (v) => (v as num?)?.toInt() ?? 0),
          totalCategories: $checkedConvert(
              'totalCategories', (v) => (v as num?)?.toInt() ?? 0),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DashboardStatsModelImplToJson(
        _$DashboardStatsModelImpl instance) =>
    <String, dynamic>{
      'totalProducts': instance.totalProducts,
      'totalStockQty': instance.totalStockQty,
      'available': instance.available,
      'broken': instance.broken,
      'totalTransactions': instance.totalTransactions,
      'rented': instance.rented,
      'returned': instance.returned,
      'overdue': instance.overdue,
      'totalRevenue': instance.totalRevenue,
      'revenueThisMonth': instance.revenueThisMonth,
      'totalRegions': instance.totalRegions,
      'totalCategories': instance.totalCategories,
    };
