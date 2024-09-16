import 'package:eazio_flutter_assessment/utils/app_export.dart';

class HomeScreenController extends GetxController {
  ///Dummy Content
  final UserModel user = const UserModel(
    name: "John",
    lateMinute: 25,
    overTimeHour: 5,
    overTimeMinute: 15,
    latePercentage: 15,
    overTimePercentage: 15,
    totalProcessedAmount: "AED 43.20K",
    avgOvertimeAmount: "AED 105.40K",
    totalProcessedPercentage: 15,
    avgOvertimePercentage: 15,
    avgLeaves: 22,
    avgAttendance: 70,
    totalEmployees: 1283,
    totalInternship: 250,
  );

  ///Dummy Content
  List<ChartDataModel> chartData = const <ChartDataModel>[
    ChartDataModel(day: 'Mon', onTime: 230, late: 320, absents: 250),
    ChartDataModel(day: 'Tue', onTime: 350, late: 350, absents: 300),
    ChartDataModel(day: 'Wed', onTime: 190, late: 220, absents: 170),
    ChartDataModel(day: 'Thu', onTime: 260, late: 330, absents: 240),
    ChartDataModel(day: 'Fri', onTime: 200, late: 300, absents: 90),
    ChartDataModel(day: 'Sat', onTime: 380, late: 250, absents: 320),
    ChartDataModel(day: 'Sun', onTime: 350, late: 230, absents: 220),
  ];

  RxSet<String> summaryButtonSelected = RxSet<String>({AppStrings.thisWeek});

  onBellIconTap() {
    Utils.toastMessage(AppStrings.willImplementLater);
  }

  onChatIconTap() {
    Utils.toastMessage(AppStrings.willImplementLater);
  }

  onMenuIconTap() {
    Utils.toastMessage(AppStrings.willImplementLater);
  }
  onManageWidgetTap() {
    Utils.toastMessage(AppStrings.willImplementLater);
  }

  onAttendanceSummaryButtonChange(Set<String> value) {
    summaryButtonSelected.value = value;
  }
}
