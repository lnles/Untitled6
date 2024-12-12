extension DateTimeFormatter on DateTime {
  String formatted() => '$year年$month月$day日';
  String formattedDateTime() => '$year年$month月$day日 $hour時$minute分$second秒';
  String formattedTime() => '$hour時$minute分$second秒';
}