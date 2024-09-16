import 'package:eazio_flutter_assessment/utils/app_export.dart';

class WeeklyReportWidget extends StatelessWidget {
  final UserModel? user;
  const WeeklyReportWidget({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      radius: 24,
      color: AppColors.blue,
      border: Border.all(
        color: AppColors.gray200,
      ),
      boxShadow: Utils.lightGrayShadow,
      decorationImage: const DecorationImage(
        image: AssetImage(AppImages.backgroundPatterImage),
        fit: BoxFit.contain,
        alignment: Alignment.topRight,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "${AppStrings.welcomeBack}, ${user?.name ?? "N/A"}!",
                      fontColor: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    MyText(
                      text: AppStrings.takeALookOurReport,
                      fontSize: 12,
                      fontColor: AppColors.white,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Utils.toastMessage(AppStrings.willImplementLater);
                  },
                  child: CustomContainer(
                    height: 36,
                    width: 36,
                    radius: 8,
                    color: AppColors.white,
                    paddingAll: 8,
                    child: CustomImageView(
                      svgPath: AppImages.shareIcon,
                    ),
                  ),
                ),
              ],
            ),
          ),
          12.verticalSpace,
          CustomDivider(
            color: AppColors.lightBlue,
          ),
          12.verticalSpace,
          Padding(
            padding: getPadding(left: 16, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: AppStrings.averageLateAndOverTime,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontColor: AppColors.white,
                ),
                6.verticalSpace,
                CustomDivider(
                  color: AppColors.lightBlue,
                ),
                8.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: CustomInfoWidget(
                        minute: user?.lateMinute,
                        title: AppStrings.avgLateness,
                        isSuccess: false,
                        percentage: user?.latePercentage,
                      ),
                    ),
                    Expanded(
                      child: CustomInfoWidget(
                        hour: user?.overTimeHour,
                        minute: user?.overTimeMinute,
                        title: AppStrings.avgOvertime,
                        percentage: user?.overTimePercentage,
                      ),
                    ),
                  ],
                ),
                24.verticalSpace,
                MyText(
                  text: AppStrings.payrollFinance,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontColor: AppColors.white,
                ),
                6.verticalSpace,
                CustomDivider(
                  color: AppColors.lightBlue,
                ),
                8.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: CustomInfoWidget(
                        amount: user?.totalProcessedAmount,
                        title: AppStrings.totalProcessed,
                        percentage: user?.totalProcessedPercentage,
                      ),
                    ),
                    Expanded(
                      child: CustomInfoWidget(
                        amount: user?.avgOvertimeAmount,
                        title: AppStrings.avgOvertime,
                        percentage: user?.avgOvertimePercentage,
                      ),
                    ),
                  ],
                ),
                24.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: AppStrings.activity,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontColor: AppColors.white,
                          ),
                          6.verticalSpace,
                          CustomDivider(
                            color: AppColors.lightBlue,
                          ),
                          12.verticalSpace,
                          Row(
                            children: [
                              Expanded(
                                child: ActivityInfoWidget(
                                  activityCount: user?.avgLeaves,
                                  activityName: AppStrings.avgLeaves,
                                ),
                              ),
                              Expanded(
                                child: ActivityInfoWidget(
                                  activityCount: user?.avgAttendance,
                                  activityName: AppStrings.avgAttendance,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    24.horizontalSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: AppStrings.activity,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontColor: AppColors.white,
                          ),
                          6.verticalSpace,
                          CustomDivider(
                            color: AppColors.lightBlue,
                          ),
                          12.verticalSpace,
                          Row(
                            children: [
                              Expanded(
                                child: ActivityInfoWidget(
                                  activityCount: user?.totalEmployees,
                                  activityName: AppStrings.avgLeaves,
                                ),
                              ),
                              Expanded(
                                child: ActivityInfoWidget(
                                  activityCount: user?.totalInternship,
                                  activityName: AppStrings.totalInternship,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
