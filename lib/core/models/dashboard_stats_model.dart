import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats_model.freezed.dart';
part 'dashboard_stats_model.g.dart';

@freezed
class DashboardStatsModel with _$DashboardStatsModel {
  @JsonSerializable(explicitToJson: true, checked: true)
  factory DashboardStatsModel({
    @JsonKey(name: 'totalProducts') @Default(0) int totalProducts,
    @JsonKey(name: 'totalStockQty') @Default(0) int totalStockQty,
    @JsonKey(name: 'available') @Default(0) int available,
    @JsonKey(name: 'broken') @Default(0) int broken,
    @JsonKey(name: 'totalTransactions') @Default(0) int totalTransactions,
    @JsonKey(name: 'rented') @Default(0) int rented,
    @JsonKey(name: 'returned') @Default(0) int returned,
    @JsonKey(name: 'overdue') @Default(0) int overdue,
    @JsonKey(name: 'totalRevenue') @Default(0) int totalRevenue,
    @JsonKey(name: 'revenueThisMonth') @Default(0) int revenueThisMonth,
    @JsonKey(name: 'totalRegions') @Default(0) int totalRegions,
    @JsonKey(name: 'totalCategories') @Default(0) int totalCategories,
  }) = _DashboardStatsModel;

  factory DashboardStatsModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardStatsModelFromJson(json);
}
