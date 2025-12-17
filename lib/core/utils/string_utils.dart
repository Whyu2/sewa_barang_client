import 'dart:convert';
import 'dart:math';

import 'package:intl/intl.dart';

/// String-related utility class.
class StringUtil {
  /// Get name's initial.
  static String? getInitials(String name) {
    return name.isNotEmpty
        ? name
            .trim()
            .replaceAll(RegExp(' +'), ' ') // Remove double spaces
            .split(' ')
            .map((l) {
              return l.isNotEmpty ? l[0].toUpperCase() : '';
            })
            .take(2)
            .join()
        : null;
  }

  /// Format String to phone number.
  static String formatPhoneNumber(String number) {
    if (number.startsWith('0')) {
      return number.replaceFirst('0', '+62');
    } else if (number.startsWith('62')) {
      return '+$number';
    } else {
      return number;
    }
  }

  /// Format phone number string to input format (starts with 0).
  static String formatInputPhoneNumber(String number) {
    if (number.startsWith('+62')) {
      return number.replaceFirst('+62', '0');
    } else if (number.startsWith('62')) {
      return number.replaceFirst('62', '0');
    } else {
      return number;
    }
  }

  /// Format phone number string to input format (without 0 and +62).
  static String formatInputPhoneNumberWithPrefix(String number) {
    if (number.startsWith('+62')) {
      return number.replaceFirst('+62', '');
    } else if (number.startsWith('62')) {
      return number.replaceFirst('62', '');
    } else if (number.startsWith('0')) {
      return number.replaceFirst('0', '');
    } else {
      return number;
    }
  }

  /// Format [double] to formatted decimal in `id` locale.
  static String formatNumberForHuman(double amount) {
    var formatter = NumberFormat.decimalPattern('id');
    return formatter.format(amount);
  }

  /// Format [double] to formmated currency in `id` locale.
  static String formatCurrencyIdr(double amount) {
    if (amount >= 0) {
      return 'Rp${formatNumberForHuman(amount)}';
    } else {
      return '-Rp${formatNumberForHuman(amount.abs())}';
    }
  }

  /// Parse [String] to double.
  ///
  /// Return `.0` if null.
  static double parseStringToDouble(String value) {
    return double.tryParse(value) ?? 0.0;
  }

  /// Format international decimal number [String]
  /// to Indonesian's decimal number [String]
  static String formatStringToIntlDecimal(String? value) {
    return (value ?? '0').replaceAll('.', '').replaceAll(',', '.');
  }

  /// Parse Indonesian decimal number [String]
  /// to internasional decimal number [double]
  static double parseStringToIntlDecimal(String? value) {
    return parseStringToDouble(formatStringToIntlDecimal(value));
  }

  /// Convert Json String to Json Map
  static Map<String, dynamic> getJsonFromString(String rawText) {
    // Will find, for exemple, the text: "{isUserActive:"
    final regexMapKeyWithOpenBracket = RegExp('(?<={)(.*?):+');
    // Will find, for exemple, the text: ", userCourses:"
    final regexMapKeyWithCommaAndSpace = RegExp(r'(?<=, )([^\]]*?):');

    final regexOnlyKeyInLine = RegExp(r'^.+:$');

    final splitedSentences = rawText
        .replaceAllMapped(
          regexMapKeyWithCommaAndSpace,
          (Match match) => '\n${match.text.trim()}\n',
        )
        .replaceAllMapped(
          regexMapKeyWithOpenBracket,
          (Match match) => '\n${match.text.trim()}\n',
        )
        .replaceAll(RegExp(r'}(?=,|]|}|$|\s+)'), '\n}\n')
        .replaceAll(RegExp(r'(?<=(,|:|^|\[)\s?){'), '\n{\n')
        .replaceAll(RegExp('\\[\\s?\\]'), '\n[\n]\n')
        .replaceAll(RegExp('\\{\\s?\\}'), '\n{\n}\n')
        .replaceAll('[', '\n[\n')
        .replaceAll(']', '\n]\n')
        .replaceAll(',', '\n,\n')
        .split('\n')
      ..removeWhere((element) => element.replaceAll(' ', '').isEmpty);

    final List<String> correctLines = [];
    for (String line in splitedSentences) {
      final isMapKey = regexOnlyKeyInLine.hasMatch(line);

      if (isMapKey) {
        final lineWithoutFinalTwoDots = line.substring(0, line.length - 1);
        final lineWithQuaot = _putQuotationMarks(lineWithoutFinalTwoDots);

        correctLines.add('$lineWithQuaot:');
      } else {
        String l = line.trim();

        final hasCommaInFinal = l.endsWith(',') && l.length > 1;
        if (hasCommaInFinal) l = l.substring(0, l.length - 1);

        // If it falls in this else, it is a value of a key or a map structure
        final isNumber = double.tryParse(l) != null || int.tryParse(l) != null;
        final isBolean = l == 'false' || l == 'true';
        final isStructureCaracter =
            ['{', '}', '[', ']', ','].any((e) => e == l);
        final isNull = l == 'null';
        if (isStructureCaracter || isNumber || isBolean || isNull) {
          if (hasCommaInFinal) {
            correctLines.add('$l,');
          } else {
            correctLines.add(l);
          }
          continue;
        }

        // If you got to this point,
        // i'm sure it's a value string, so lets add a double quote
        final lineWithQuaot = _putQuotationMarks(l);
        if (hasCommaInFinal) {
          correctLines.add('$lineWithQuaot,');
        } else {
          correctLines.add(lineWithQuaot);
        }
      }
    }

    final Map<String, dynamic> decoded = {};
    (jsonDecode(correctLines.join('')) as Map)
        .cast<String, dynamic>()
        .forEach((key, value) {
      decoded[key] = value;
    });

    return decoded;
  }

  static String _putQuotationMarks(String findedText) {
    if (!findedText.startsWith('\'') && !findedText.startsWith('"')) {
      findedText = findedText[0] + findedText.substring(1);
    }
    if (!findedText.endsWith('\'')) {
      final lastIndex = findedText.length - 1;
      findedText = findedText.substring(0, lastIndex) + findedText[lastIndex];
    }
    return '"$findedText"';
  }

  static String? getFileExtension(String fileName) {
    try {
      final splits = fileName.split('.');
      if (splits.length < 2) {
        return null;
      }
      return splits.last;
    } catch (e) {
      return null;
    }
  }

  static double formatDecimalPlaces(double value, int places) {
    final formatted = value.toStringAsFixed(places);
    return double.tryParse(formatted) ?? .0;
  }

  static String formatFileSize(
    int numberSize, {
    bool inBinaryFileSize = false,
  }) {
    if (numberSize <= 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
    var i = (log(numberSize) / log(1024)).floor();
    // ignore: lines_longer_than_80_chars
    return '${(numberSize / pow(inBinaryFileSize ? 1024 : 1000, i)).toStringAsFixed(0)} ${suffixes[i]}';
  }
}

extension MatchExtension on Match {
  String get text => input.substring(start, end);
}

extension StringExtension on String {
  String get capitalize {
    String text = '';
    if (this != '') {
      text = '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
    }
    return text;
  }

  String get titleCase {
    String text = '';
    if (this != '') {
      text = split(' ')
          .map(
            (word) => word.isEmpty
                ? word
                : '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}',
          )
          .join(' ');
    }
    return text;
  }
}
