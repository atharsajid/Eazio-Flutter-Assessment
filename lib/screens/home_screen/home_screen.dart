import 'package:eazio_flutter_assessment/screens/home_screen/widgets/attendance_summary_widget.dart';
import 'package:eazio_flutter_assessment/screens/home_screen/widgets/weekly_report_widget.dart';
import 'package:eazio_flutter_assessment/utils/app_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  HomeScreenController get controller => Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        onBellIconTap: controller.onBellIconTap,
        onChatIconTap: controller.onChatIconTap,
        onMenuIconTap: controller.onMenuIconTap,
      ),
      body: ListView(
        padding: getPadding(all: 24),
        children: [
          MyText(
            text: AppStrings.organizationInsights,
            fontWeight: FontWeight.w600,
            fontColor: AppColors.gray900,
            fontSize: 24,
          ),
          4.verticalSpace,
          MyText(
            text: AppStrings.trackOrganizationInsights,
            fontColor: AppColors.gray600,
            fontSize: 16,
          ),
          16.verticalSpace,
          Row(
            children: [
              GestureDetector(
                onTap: controller.onManageWidgetTap,
                child: CustomContainer(
                  height: getSize(40),
                  radius: 8,
                  border: Border.all(
                    color: AppColors.gray300,
                  ),
                  padding: getPadding(left: 12, right: 18),
                  boxShadow: Utils.lightGrayShadow,
                  color: AppColors.white,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        svgPath: AppImages.addIcon,
                      ),
                      8.horizontalSpace,
                      MyText(
                        text: AppStrings.manageWidgets,
                        fontWeight: FontWeight.w600,
                        fontColor: AppColors.gray700,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          20.verticalSpace,
          const CustomDivider(),
          24.verticalSpace,
          WeeklyReportWidget(user: controller.user),
          24.verticalSpace,
          const AttendanceSummaryWidget(),
        ],
      ),
    );
  }
}
