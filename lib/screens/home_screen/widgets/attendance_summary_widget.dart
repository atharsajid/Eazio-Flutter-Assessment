import 'package:eazio_flutter_assessment/utils/app_export.dart';
import 'package:flutter/material.dart';

class AttendanceSummaryWidget extends StatelessWidget {
  const AttendanceSummaryWidget({super.key});
  HomeScreenController get controller => Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: AppColors.white,
      radius: 20,
      border: Border.all(color: AppColors.gray200),
      boxShadow: Utils.mediumGrayShadow,
      child: Column(
        children: [
          Padding(
            padding: getPadding(top: 24, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: AppStrings.attendanceSummary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontColor: AppColors.gray900,
                ),
                Padding(
                  padding: getPadding(bottom: 6),
                  child: InkWell(
                    onTap: () {
                      Utils.toastMessage(AppStrings.willImplementLater);
                    },
                    child: Icon(
                      Icons.more_vert,
                      color: AppColors.gray400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          24.verticalSpace,
          Obx(() {
            return SegmentedButton<String>(
              segments: const [
                ButtonSegment(
                  value: AppStrings.today,
                  label: MyText(text: AppStrings.today),
                ),
                ButtonSegment(
                  value: AppStrings.thisWeek,
                  label: MyText(text: AppStrings.thisWeek),
                ),
                ButtonSegment(
                  value: AppStrings.thisMonth,
                  label: MyText(text: AppStrings.thisMonth),
                ),
              ],
              multiSelectionEnabled: false,
              showSelectedIcon: false,
              style: ButtonStyle(),
              onSelectionChanged: controller.onAttendanceSummaryButtonChange,
              selected: controller.summaryButtonSelected.value,
            );
          }),
        ],
      ),
    );
  }
}
