import 'package:eazio_flutter_assessment/utils/app_export.dart';

class AttendanceSummaryButton extends StatelessWidget {
  const AttendanceSummaryButton({super.key});
  HomeScreenController get controller => Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: getSize(45),
        child: SegmentedButton(
          segments: const [
            ButtonSegment(value: AppStrings.today, label: Text(AppStrings.today)),
            ButtonSegment(value: AppStrings.thisWeek, label: Text(AppStrings.thisWeek)),
            ButtonSegment(value: AppStrings.thisMonth, label: Text(AppStrings.thisMonth)),
          ],
          showSelectedIcon: false,
          selected: controller.summaryButtonSelected.value,
          onSelectionChanged: controller.onAttendanceSummaryButtonChange,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return AppColors.lightOrange;
              }
              return AppColors.white;
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return AppColors.orange;
              }
              return AppColors.gray700;
            }),
            side: MaterialStatePropertyAll(
              BorderSide(color: AppColors.gray300),
            ),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
            textStyle: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return TextStyle(fontSize: getFontSize(14), fontWeight: FontWeight.w600, color: AppColors.orange);
              }
              return TextStyle(fontSize: getFontSize(14), fontWeight: FontWeight.w600, color: AppColors.gray700);
            }),
          ),
        ),
      );
    });
  }
}
