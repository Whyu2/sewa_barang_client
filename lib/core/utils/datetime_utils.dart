// ignore_for_file: non_constant_identifier_names

import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

enum FormattedTimestampStringType {
  receipt,
}

/// Utility class related to date time.
class DatetimeUtil {
  /// Get days difference of two dates
  static int getDaysDiff(DateTime first, DateTime second) {
    final firstDt = DateTime(first.year, first.month, first.day);
    final secondDt = DateTime(second.year, second.month, second.day);
    return (secondDt.difference(firstDt).inHours / 24).round();
  }

  static int getMonthDiff(DateTime first, DateTime second) {
    return (second.year - first.year) * 12 + (second.month - first.month);
  }

  /// Get days difference of today dan `date`
  static int getTodayDaysDiff(DateTime date) {
    return getDaysDiff(DateTime.now(), date);
  }

  /// Get formatted today's date.
  static String getTodayDate() {
    final now = DateTime.now();
    return now.dMMMMyyyy();
  }

  /// Get formatted date.
  @Deprecated('Use dMMMMyyyy instead')
  static String formatDate(DateTime dateTime) {
    return dateTime.dMMMMyyyy();
  }

  /// Get formatted compact date.
  static String formatCompactDate(DateTime dateTime) {
    return DateFormat('d/M/y', 'id').format(dateTime);
  }

  /// Get formatted compact date.
  @Deprecated('Use dd_MM_yyyy instead')
  static String formatNewCompactDate(DateTime dateTime) {
    return dateTime.dd_MM_yyyy();
  }

  /// Get formatted today's date for API.
  static String getTodayDateApi() {
    final now = DateTime.now();
    return now.yyyy__MM__dd();
  }

  /// Get formatted yesterday's date for API.
  static String getYesterdayDateApi() {
    final now = DateTime.now().subtract(const Duration(days: 1));
    return now.yyyy__MM__dd();
  }

  /// Get formatted date for API.
  @Deprecated('Use yyyy__MM__dd instead')
  static String getDateForApi(DateTime date) {
    return date.yyyy__MM__dd();
  }

  static String timestampToFormattedString(
    DateTime timestamp, [
    FormattedTimestampStringType type = FormattedTimestampStringType.receipt,
  ]) {
    switch (type) {
      case FormattedTimestampStringType.receipt:
        return DateFormat('dd MMMM yyyy HH:mm', 'id')
            .format(timestamp.toLocal());
    }
  }

  static String formatTimeago(
    DateTime date, {
    String locale = 'id',
  }) {
    timeago.setLocaleMessages(locale, timeago.IdMessages());
    return timeago.format(date, locale: locale);
  }
}

/// DateTime extension for formatting.
///
/// Custom notations:
/// - 9: comma
/// - v: timezone (WIB, WITA, WIT)
/// - _: forward slash (/)
/// - __: strip (-)
extension DateTimeFormatExts on DateTime {
  // Returns date with format "01 Mar 2023, 13:14 WIB"
  String ddMMMyyyy9HHmmv() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd MMM yyyy, HH:mm', 'id').format(
      dateTimeLocal,
    );
    String timezone = '';
    if (dateTimeLocal.timeZoneOffset == const Duration(hours: 7)) {
      timezone = ' WIB';
    } else if (dateTimeLocal.timeZoneOffset == const Duration(hours: 8)) {
      timezone = ' WITA';
    } else if (dateTimeLocal.timeZoneOffset == const Duration(hours: 9)) {
      timezone = ' WIT';
    }
    return '$formattedDate$timezone';
  }

  // Returns date with format "01 Mar 2023, 13:14"
  String ddMMMyyyy9HHmm() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd MMM yyyy, HH:mm', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "01 Maret 2023, 13:14 WIB"
  String ddMMMMyyyy9HHmmv() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd MMMM yyyy, HH:mm', 'id').format(
      dateTimeLocal,
    );
    String timezone = '';
    if (dateTimeLocal.timeZoneOffset == const Duration(hours: 7)) {
      timezone = ' WIB';
    } else if (dateTimeLocal.timeZoneOffset == const Duration(hours: 8)) {
      timezone = ' WITA';
    } else if (dateTimeLocal.timeZoneOffset == const Duration(hours: 9)) {
      timezone = ' WIT';
    }
    return '$formattedDate$timezone';
  }

  // Returns date with format "01 Maret 2023, 13:14"
  String ddMMMMyyyy9HHmm() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd MMMM yyyy, HH:mm', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "01/03/2023"
  String dd_MM_yyyy() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd/MM/yyyy', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "01 Maret 2023"
  String ddMMMMyyyy() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd MMMM yyyy', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "1 Maret 2023"
  String dMMMMyyyy() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('d MMMM yyyy', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "01/03/2023 13:14"
  String dd_MM_yyyyHHmm() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd/MM/yyyy HH:mm', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "01/03/2023 13:14:10"
  String dd_MM_yyyyHHmmss() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd/MM/yyyy HH:mm:ss', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "01 Mar 2023"
  String ddMMMyyyy() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd MMM yyyy', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "1 Mar 2023"
  String dMMMyyyy() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('d MMM yyyy', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "01 Mar 2023 13:14"
  String ddMMMyyyyHHmm() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd MMM yyyy HH:mm', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "01 Maret 2023 - 13:14"
  String ddMMMMyyyy__HHmm() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('dd MMMM yyyy - HH:mm', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "Senin, 1 Mar 2023"
  String EEEE9dMMMyyyy() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('EEEE, d MMM yyyy', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  // Returns date with format "Senin, 1 Maret 2023"
  String EEEE9dMMMMyyyy() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('EEEE, d MMMM yyyy', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  /// Returns date with format "2023-03-01"
  String yyyy__MM__dd() {
    DateTime dateTimeLocal = toLocal();
    String formattedDate = DateFormat('yyyy-MM-dd', 'id').format(
      dateTimeLocal,
    );
    return formattedDate;
  }

  DateTime get dateOnly {
    return DateTime(year, month, day);
  }

  DateTime get midnight {
    return DateTime(year, month, day, 23, 59, 59);
  }
}
