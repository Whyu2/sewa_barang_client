// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valoku_app/features/home/data/data_sources/data_sources.dart';
import 'package:valoku_app/features/home/data/models/models.dart';

@injectable
class AgentRepository {
  final AgentDataSource _remoteDataSource;

  AgentRepository(this._remoteDataSource);

  Future<AgentModel> getAgentFromRemote() async {
    try {
      final response = await _remoteDataSource.getAgent();
      AgentModel result = AgentModel.fromJson(response.data!.toJson());
      return result;
    } on DioError catch (err) {
      throw err.toString();
    } catch (_) {
      rethrow;
    }
  }

  Future<List<AgentModel>?> getListAgentFromRemote() async {
    try {
      final response = await _remoteDataSource.getListAgent();
      List<AgentModel>? result = response.data!.data;
      return result;
    } on DioError catch (err) {
      throw err.toString();
    } catch (_) {
      rethrow;
    }
  }
}
