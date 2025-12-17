import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sewa_barang_client/core/widgets/chip_widget.dart';

@JsonEnum(valueField: 'status')
enum RentTransactionStatus {
  @JsonValue('rented')
  rented,
  @JsonValue('done')
  done;

  String get displayName {
    switch (this) {
      case RentTransactionStatus.rented:
        return 'Rent';
      case RentTransactionStatus.done:
        return 'Done';
    }
  }

  String get value {
    switch (this) {
      case RentTransactionStatus.rented:
        return 'rented';
      case RentTransactionStatus.done:
        return 'done';
    }
  }

  ChipWidgetVariant get chipVariant {
    switch (this) {
      case RentTransactionStatus.rented:
        return ChipWidgetVariant.danger;
      case RentTransactionStatus.done:
        return ChipWidgetVariant.primary;
    }
  }
}
