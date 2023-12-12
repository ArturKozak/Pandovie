import 'package:intl/intl.dart';

const String dateFormatter = 'yyyy';
const String dateQueryFormatter = 'yyyy-MM-dd';

extension DateHelper on DateTime {
  String formatDate() {
    final formatter = DateFormat(dateFormatter);
    return formatter.format(this);
  }

  String formatDateForQuery() {
    final formatter = DateFormat(dateQueryFormatter);
    return formatter.format(this);
  }

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
