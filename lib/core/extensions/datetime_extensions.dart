extension DateTimeFormatter on DateTime {
  String formatted() => '$year年$month月$day日';

  String formattedDateTime() => '$year年$month月$day日 $hour時$minute分$second秒';

  String formattedTime() => '$hour時$minute分$second秒';

  String formattedEn() => '$year-$month-$day';

  String formattedDateTimeEn() => '$year-$month-$day $hour:$minute:$second';

  String formattedTimeEn() => '$hour:$minute:$second';
}

extension DateTimeStringExtension on String {
  DateTime toDateTime() => DateTime.parse(this);
}