import 'package:eazio_flutter_assessment/utils/app_export.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}
