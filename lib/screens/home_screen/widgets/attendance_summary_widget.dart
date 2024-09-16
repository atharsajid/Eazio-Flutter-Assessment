import 'package:eazio_flutter_assessment/utils/app_export.dart';

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
          Row(
            children: [
              Padding(
                padding: getPadding(left: 16, right: 16),
                child: const AttendanceSummaryButton(),
              ),
            ],
          ),
          16.verticalSpace,
          const CustomDivider(),
          16.verticalSpace,
          Padding(
            padding: getPadding(left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomCategoryIndicatorWidget(
                      color: AppColors.lightRed,
                      title: AppStrings.absents,
                    ),
                    12.horizontalSpace,
                    CustomCategoryIndicatorWidget(
                      color: AppColors.orange400,
                      title: AppStrings.late,
                    ),
                    12.horizontalSpace,
                    CustomCategoryIndicatorWidget(
                      color: AppColors.green,
                      title: AppStrings.onTime,
                    ),
                    12.horizontalSpace,
                  ],
                ),
                4.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(bottom: 30),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: MyText(
                          text: AppStrings.attendance,
                          fontSize: getFontSize(12),
                          fontWeight: FontWeight.w500,
                          fontColor: AppColors.gray600,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const AttendanceGraphWidget(),
                        Obx(() {
                          return MyText(
                            text: controller.summaryButtonSelected.value.firstOrNull ?? "",
                            fontSize: getFontSize(12),
                            fontWeight: FontWeight.w500,
                            fontColor: AppColors.gray600,
                          );
                        })
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          16.verticalSpace,
          const CustomDivider(),
          8.verticalSpace,
          Padding(
            padding: getPadding(
              left: 16,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: AppStrings.learnMore,
                  fontWeight: FontWeight.w600,
                  fontColor: AppColors.gray600,
                ),
                GestureDetector(
                  onTap: () {
                    Utils.toastMessage(AppStrings.willImplementLater);
                  },
                  child: CustomContainer(
                    padding: getPadding(left: 16, right: 16, top: 10, bottom: 10),
                    radius: 8,
                    border: Border.all(color: AppColors.gray300),
                    color: AppColors.white,
                    boxShadow: Utils.lightGrayShadow,
                    child: const MyText(
                      text: AppStrings.viewFullReport,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
          14.verticalSpace,
        ],
      ),
    );
  }
}
