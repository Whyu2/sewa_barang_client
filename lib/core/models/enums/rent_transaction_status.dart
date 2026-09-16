import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sewa_barang_client/core/widgets/chip_widget.dart';

@JsonEnum(valueField: 'status')
enum RentTransactionStatus {
  @JsonValue('rented')
  rented,
  @JsonValue('done')
  done,
  @JsonValue('returned')
  returned,
  @JsonValue('overdue')
  overdue;

  String get displayName {
    switch (this) {
      case RentTransactionStatus.rented:
        return 'Disewa';
      case RentTransactionStatus.done:
      case RentTransactionStatus.returned:
        return 'Dikembalikan';
      case RentTransactionStatus.overdue:
        return 'Terlambat';
    }
  }

  String get value {
    switch (this) {
      case RentTransactionStatus.rented:
        return 'rented';
      case RentTransactionStatus.done:
        return 'done';
      case RentTransactionStatus.returned:
        return 'returned';
      case RentTransactionStatus.overdue:
        return 'overdue';
    }
  }

  ChipWidgetVariant get chipVariant {
    switch (this) {
      case RentTransactionStatus.rented:
        return ChipWidgetVariant.danger;
      case RentTransactionStatus.returned:
      case RentTransactionStatus.done:
        return ChipWidgetVariant.primary;
      case RentTransactionStatus.overdue:
        return ChipWidgetVariant.warning;
    }
  }
}
