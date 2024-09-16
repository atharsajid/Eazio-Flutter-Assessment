import 'package:eazio_flutter_assessment/utils/app_export.dart';

class MyText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final Color? textDecorationColor;
  final String? fontFamily;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  const MyText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.textDecoration,
    this.textDecorationColor,
    this.fontFamily,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: getFontSize(fontSize ?? 14),
        color: fontColor ?? AppColors.gray700,
        fontWeight: fontWeight,
        fontFamily: fontFamily ?? AppConstants.fontFamilyInter,
        decoration: textDecoration,
        decorationColor: textDecorationColor ?? fontColor,
      ),
    );
  }
}
