import 'package:crypto_list/core/http/base_service.dart';
import 'package:crypto_list/screens/home_screen/controller/home_controller.dart';
import 'package:crypto_list/screens/home_screen/data/provider/crypto_list_service.dart';
import 'package:crypto_list/screens/home_screen/data/repository/crypto_list_repository.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BaseService());
    Get.put(HomeController(
        CryptoListRepository(service: CryptoListService(Get.find()))));
  }
}
