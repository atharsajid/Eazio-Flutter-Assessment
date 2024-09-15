import 'package:eazio_flutter_assessment/screens/home_screen/controller/home_screen_controller.dart';
import 'package:get/get.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeScreenController>(
      HomeScreenController(),
    );
  }
}
