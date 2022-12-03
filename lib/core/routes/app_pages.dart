import 'package:crypto_list/screens/home_screen/bindings/home_bindings.dart';
import 'package:crypto_list/screens/home_screen/home_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      binding: HomeBindings(),
      page: () => const HomePage(),
    )
  ];
}
