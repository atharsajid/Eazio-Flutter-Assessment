import 'package:eazio_flutter_assessment/screens/home_screen/binding/home_screen_binding.dart';
import 'package:eazio_flutter_assessment/screens/home_screen/home_screen.dart';
import 'package:get/get.dart';

part "app_routes.dart";

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME_SCREEN;
  static final routes = [
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeScreen(),
      binding: HomeScreenBinding(),
    ),
  ];
}
