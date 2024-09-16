import 'package:eazio_flutter_assessment/utils/app_export.dart';

class CustomCategoryIndicatorWidget extends StatelessWidget {
  final Color? color;
  final String? title;
  const CustomCategoryIndicatorWidget({
    super.key,
    this.color,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: getSize(16),
          color: color,
        ),
        8.horizontalSpace,
        MyText(
          text: title ?? "",
          fontColor: AppColors.gray600,
        ),
      ],
    );
  }
}
