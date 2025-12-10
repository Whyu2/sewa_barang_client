import 'package:valoku_app/core/network/list_result.dart';

/// API result model.
class ApiResult<T> {
  /// Error message if any.
  final int? status;

  /// The response payload if any.
  final T? data;

  /// Json key for retrieving [message].
  static const String jsonKeyStatus = 'status';

  /// Json key for retrieving [result].
  static const String jsonKeyData = 'data';

  /// Constructor.
  const ApiResult({
    this.status,
    this.data,
  });

  const ApiResult._(this.status, this.data);

  /// Parse JSON map into generic [T] object.
  static ApiResult<T> fromResponse<T>(
    Map<String, dynamic> data,
    T Function(dynamic json) mapper,
  ) {
    return ApiResult._(
      data[jsonKeyStatus],
      mapper(data[jsonKeyData]),
    );
  }

  /// Parse JSON map into [ListResult] object.
  static ApiResult<ListResult<T>> fromResponseListResult<T>(
    Map<String, dynamic> data,
    T Function(dynamic json) mapper,
  ) {
    return ApiResult._(
      data[jsonKeyStatus],
      ListResult<T>(
        data: (data[jsonKeyData] as List)
            .map(
              (item) => mapper(item),
            )
            .toList(),
      ),
    );
  }
}
