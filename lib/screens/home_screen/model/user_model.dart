class UserModel {
  final String? name;
  final int? lateHour;
  final int? lateMinute;
  final int? overTimeHour;
  final int? overTimeMinute;
  final double? latePercentage;
  final double? overTimePercentage;
  final String? totalProcessedAmount;
  final String? avgOvertimeAmount;
  final double? totalProcessedPercentage;
  final double? avgOvertimePercentage;
  final int? avgLeaves;
  final int? avgAttendance;
  final int? totalEmployees;
  final int? totalInternship;

  const UserModel({
    this.name,
    this.lateHour,
    this.lateMinute,
    this.overTimeHour,
    this.overTimeMinute,
    this.latePercentage,
    this.overTimePercentage,
    this.totalProcessedAmount,
    this.avgOvertimeAmount,
    this.totalProcessedPercentage,
    this.avgOvertimePercentage,
    this.avgLeaves,
    this.avgAttendance,
    this.totalEmployees,
    this.totalInternship,
  });
}


