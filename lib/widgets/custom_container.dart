import 'package:eazio_flutter_assessment/utils/app_export.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final double? height;
  final double? width;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final double? radius;
  final BoxShape? boxShape;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;
  final double? paddingAll;
  final EdgeInsetsGeometry? margin;
  final double? marginAll;
  final DecorationImage? decorationImage;
  const CustomContainer({
    super.key,
    this.height,
    this.width,
    this.color,
    this.borderRadius,
    this.radius,
    this.boxShape,
    this.boxShadow,
    this.border,
    this.padding,
    this.paddingAll,
    this.margin,
    this.marginAll,
    this.child,
    this.decorationImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(height),
      width: getSize(width),
      padding: padding ?? getPadding(all: paddingAll),
      margin: margin ?? getMargin(all: marginAll),
      decoration: BoxDecoration(
        image: decorationImage,
        color: color,
        shape: boxShape ?? BoxShape.rectangle,
        borderRadius: boxShape == null ? borderRadius ?? BorderRadius.circular(radius ?? 0) : null,
        boxShadow: boxShadow,
        border: border,
      ),
      child: child,
    );
  }
}
