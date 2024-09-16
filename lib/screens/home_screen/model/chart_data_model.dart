
class ChartDataModel {
  final String day;
  final num? absents;
  final num? late;
  final num? onTime;

  const ChartDataModel({
    required this.day,
    this.absents,
    this.late,
    this.onTime,
  });
}
