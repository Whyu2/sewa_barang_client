import 'package:freezed_annotation/freezed_annotation.dart';

/// Base class for list result.
class ListResult<T> {
  /// The list data.
  @JsonKey(name: 'data')
  List<T>? data;

  ListResult({
    this.data,
  });
}
