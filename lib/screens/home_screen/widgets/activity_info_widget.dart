import 'package:eazio_flutter_assessment/utils/app_export.dart';

class ActivityInfoWidget extends StatelessWidget {
  final String? title;
  final int? activityCount;
  final String? activityName;

  const ActivityInfoWidget({
    super.key,
    this.title,
    this.activityName,
    this.activityCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: "$activityCount",
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontColor: AppColors.white,
        ),
        MyText(
          text: "$activityName",
          fontSize: 12,
          fontColor: AppColors.white,
        )
      ],
    );
  }
}
