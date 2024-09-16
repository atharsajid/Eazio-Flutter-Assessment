import 'package:eazio_flutter_assessment/utils/app_export.dart';

class Utils {
  static final FToast showToast = FToast();

  static toastMessage(String message) {
    if (Get.overlayContext != null) {
      FToast toast = FToast();
      toast.init(Get.overlayContext!);
      toast.removeCustomToast();
      toast.showToast(
        toastDuration: const Duration(milliseconds: 2500),
        child: CustomContainer(
          padding: getPadding(left: 15, right: 15, top: 10, bottom: 10),
          radius: 24,
          color: AppColors.gray900,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: AppImages.appIcon,
                height: getSize(24),
              ),
              10.horizontalSpace,
              Flexible(
                child: MyText(
                  text: message,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  fontColor: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  static final List<BoxShadow> lightGrayShadow = [
    BoxShadow(
      color: AppColors.shadowColor.withOpacity(0.05),
      blurRadius: 2,
      spreadRadius: 0,
      offset: const Offset(0, 1),
    ),
  ];
  static final List<BoxShadow> mediumGrayShadow = [
    BoxShadow(
      color: AppColors.shadowGrayColor.withOpacity(0.05),
      blurRadius: 16,
      spreadRadius: 0,
      offset: const Offset(0, 0),
    ),
  ];
}
