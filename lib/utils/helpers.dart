import 'package:intl/intl.dart';

String formatDate(DateTime date) {
  return DateFormat('yyyy-MM-dd HH:mm').format(date);
}

void showError(String message) {
  print('Error: $message');
}
