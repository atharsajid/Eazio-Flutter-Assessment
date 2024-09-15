import 'package:eazio_flutter_assessment/constant/app_strings.dart';
import 'package:eazio_flutter_assessment/screens/home_screen/model/user_model.dart';
import 'package:eazio_flutter_assessment/utils/utils.dart';
import 'package:get/get.dart';

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

  onAttendanceSummaryButtonChange(Set<String> value) {
    summaryButtonSelected.value = value;
  }
}
