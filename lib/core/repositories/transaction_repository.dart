// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../data_sources/transaction_data_sources.dart';
import '../models/dashboard_stats_model.dart';
import '../models/dashboard_tables.dart';
import '../models/name_description_model.dart';
import '../models/rent_transaction_model.dart';
import '../models/transaction_log_model.dart';

@injectable
class TransactionRepository {
  final TransactionDataSource _remoteDataSource;
  TransactionRepository(this._remoteDataSource);
  Future<RentTransactionModel> getTransactionFromRemote(int id) async {
    try {
      final response = await _remoteDataSource.getTransaction(id);
      return response.data!;
    } on DioError catch (err) {
      throw err.toString();
    }
  }

  Future<List<RentTransactionModel>?> getListTransactionFromRemote(
      {bool mine = false}) async {
    try {
      final response =
          await _remoteDataSource.getListTransaction(mine: mine);
      return response.data!.data;
    } on DioError catch (err) {
      throw err.toString();
    }
  }

  Future<RentTransactionModel> createTransaction(FormData data) async {
    try {
      final res = await _remoteDataSource.createTransaction(data);
      return res.data!;
    } on DioError catch (err) {
      throw err.toString();
    }
  }

  Future<RentTransactionModel> returnTransaction(int id, FormData data) async {
    try {
      final res = await _remoteDataSource.returnTransaction(id, data);
      return res.data!;
    } on DioError catch (err) {
      throw err.toString();
    }
  }

  Future<DashboardStatsModel> getDashboardStatsFromRemote(
      {bool mine = false}) async {
    try {
      final res = await _remoteDataSource.getDashboardStats(mine: mine);
      return res.data!;
    } on DioError catch (err) {
      throw err.toString();
    }
  }

  Future<DashboardTables> getDashboardTablesFromRemote(
      {bool mine = false}) async {
    try {
      final res = await _remoteDataSource.getDashboardTables(mine: mine);
      return res.data!;
    } on DioError catch (err) {
      throw err.toString();
    }
  }

  Future<List<NameDescriptionModel>?> getRegionsFromRemote() async {
    try {
      final res = await _remoteDataSource.getRegions();
      return res.data!.data;
    } on DioError catch (err) {
      throw err.toString();
    }
  }

  Future<List<TransactionLogModel>?> getLogs({int? transactionId}) async {
    try {
      final res = await _remoteDataSource.getLogs(transactionId: transactionId);
      return res.data!.data;
    } on DioError catch (err) {
      throw err.toString();
    }
  }
}
