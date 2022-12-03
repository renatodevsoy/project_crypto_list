import 'dart:convert';

import 'package:crypto_list/core/http/base_service.dart';
import 'package:crypto_list/screens/home_screen/data/model/crypto_list_model.dart';

class CryptoListService {
  final BaseService http;

  CryptoListService(this.http);

  Future<List<CryptoListModel>> listCrypto() async {
    var res = await http.get(
        "/coins/markets?vs_currency=brl&order=market_cap_desc&sparkline=false");

    return json
        .decode(res.bodyString.toString())
        .map((data) => CryptoListModel.fromJson(data))
        .cast<CryptoListModel>()
        .toList();
  }
}
