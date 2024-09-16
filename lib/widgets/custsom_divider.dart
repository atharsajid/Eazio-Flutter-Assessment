import 'package:eazio_flutter_assessment/utils/app_export.dart';

class CustomDivider extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? indent;
  final double? endIndent;
  const CustomDivider({
    super.key,
    this.color,
    this.endIndent,
    this.height,
    this.indent,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? AppColors.gray200,
      height: height,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
