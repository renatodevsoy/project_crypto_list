import 'package:crypto_list/screens/home_screen/data/model/crypto_list_model.dart';
import 'package:crypto_list/screens/home_screen/data/provider/crypto_list_service.dart';

class CryptoListRepository {
  final CryptoListService service;
  CryptoListRepository({
    required this.service,
  });

  Future<List<CryptoListModel>> listCrypto() async {
    return await service.listCrypto();
  }
}
