import 'package:sewa_barang_client/core/models/rent_transaction_model.dart';

class DashboardTables {
  final List<RentTransactionModel> recent;
  final List<RentTransactionModel> overdue;

  const DashboardTables({
    this.recent = const [],
    this.overdue = const [],
  });

  factory DashboardTables.fromJson(Map<String, dynamic> json) {
    List<RentTransactionModel> parseList(dynamic raw) {
      if (raw is! List) return const [];
      return raw
          .whereType<Map<String, dynamic>>()
          .map(RentTransactionModel.fromJson)
          .toList();
    }

    return DashboardTables(
      recent: parseList(json['recent']),
      overdue: parseList(json['overdue']),
    );
  }
}
