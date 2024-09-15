import 'package:eazio_flutter_assessment/utils/app_export.dart';

class CustomInfoWidget extends StatelessWidget {
  final int? hour;
  final int? minute;
  final String? title;
  final String? amount;
  final double? percentage;
  final bool isSuccess;
  const CustomInfoWidget({
    super.key,
    this.amount,
    this.hour,
    this.minute,
    this.percentage,
    this.title,
    this.isSuccess = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (amount != null)
          MyText(
            text: amount ?? "AED 0",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontColor: AppColors.white,
          )
        else
          RichText(
            text: TextSpan(
              children: [
                if (hour != null) ...[
                  TextSpan(
                    text: "$hour ",
                    style: TextStyle(
                      fontFamily: AppConstants.fontFamilyInter,
                      fontSize: getFontSize(24),
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                  TextSpan(
                    text: "${AppStrings.hour} ",
                    style: TextStyle(
                      fontFamily: AppConstants.fontFamilyInter,
                      fontSize: getFontSize(14),
                      color: AppColors.white,
                    ),
                  ),
                ],
                if (minute != null) ...[
                  TextSpan(
                    text: "$minute ",
                    style: TextStyle(
                      fontFamily: AppConstants.fontFamilyInter,
                      fontSize: getFontSize(24),
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                  TextSpan(
                    text: AppStrings.minute,
                    style: TextStyle(
                      fontFamily: AppConstants.fontFamilyInter,
                      fontSize: getFontSize(14),
                      color: AppColors.white,
                    ),
                  ),
                ],
              ],
            ),
          ),
        6.verticalSpace,
        MyText(
          text: title ?? "N/A",
          fontColor: AppColors.white,
          fontSize: 12,
        ),
        6.verticalSpace,
        CustomContainer(
          height: 22,
          width: 50,
          color: isSuccess ? AppColors.success50 : AppColors.error50,
          radius: 6,
          padding: getPadding(left: 4, right: 4),
          border: Border.all(color: isSuccess ? AppColors.success200 : AppColors.error200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(svgPath: isSuccess ? AppImages.arrowUpIcon : AppImages.arrowDownIcon),
              4.horizontalSpace,
              MyText(
                text: "${percentage?.toStringAsFixed(0)}%",
                fontColor: isSuccess ? AppColors.success700 : AppColors.error700,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
        )
      ],
    );
  }
}
