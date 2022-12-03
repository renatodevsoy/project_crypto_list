import 'package:crypto_list/screens/home_screen/data/model/crypto_list_model.dart';
import 'package:crypto_list/screens/home_screen/data/repository/crypto_list_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final CryptoListRepository _repository;

  HomeController(this._repository);

  Future<List<CryptoListModel>> getList() async {
    return _repository.listCrypto();
  }
}
