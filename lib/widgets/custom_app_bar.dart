import 'package:eazio_flutter_assessment/constant/app_images.dart';
import 'package:eazio_flutter_assessment/utils/extensions/double_extensions.dart';
import 'package:eazio_flutter_assessment/utils/size_utils.dart';
import 'package:eazio_flutter_assessment/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? onBellIconTap;
  final void Function()? onChatIconTap;
  final void Function()? onMenuIconTap;

  const CustomAppBar({
    super.key,
    this.onBellIconTap,
    this.onChatIconTap,
    this.onMenuIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      forceMaterialTransparency: true,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      titleSpacing: getSize(24),
      title: CustomImageView(
        svgPath: AppImages.appLogo,
        height: getSize(32),
      ),
      actions: [
        CustomImageView(
          svgPath: AppImages.bellIcon,
          height: getSize(24),
          onTap: onBellIconTap,
        ),
        20.horizontalSpace,
        CustomImageView(
          svgPath: AppImages.chatIcon,
          height: getSize(24),
          onTap: onChatIconTap,
        ),
        20.horizontalSpace,
        CustomImageView(
          svgPath: AppImages.menuIcon,
          height: getSize(24),
          onTap: onMenuIconTap,
        ),
        20.horizontalSpace,
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 56);
}
