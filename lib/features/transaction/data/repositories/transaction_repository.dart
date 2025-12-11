// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../data_sources/transaction_data_sources.dart';
import '../models/rent_transaction_model.dart';

@injectable
class TransactionRepository {
  final TransactionDataSource _remoteDataSource;

  TransactionRepository(this._remoteDataSource);

  Future<RentTransactionModel> getTransactionFromRemote() async {
    try {
      final response = await _remoteDataSource.getTransaction();
      RentTransactionModel result =
          RentTransactionModel.fromJson(response.data!.toJson());

      return result;
    } on DioError catch (err) {
      throw err.toString();
    } catch (_) {
      rethrow;
    }
  }

  Future<List<RentTransactionModel>?> getListTransactionFromRemote() async {
    try {
      final response = await _remoteDataSource.getListTransaction();
      debugPrint('movieTitle: $response');
      List<RentTransactionModel>? result = response.data!.data;
      return result;
    } on DioError catch (err) {
      throw err.toString();
    } catch (_) {
      rethrow;
    }
  }
}
