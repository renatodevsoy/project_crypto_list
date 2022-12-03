import 'package:get/get.dart';

class BaseService extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "https://api.coingecko.com/api/v3";

    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(seconds: 8);
    httpClient.addResponseModifier((request, response) async {
      return response;
    });
    httpClient.addRequestModifier<Object?>((request) {
      return request;
    });
    httpClient.addAuthenticator<Object?>((request) async {
      return request;
    });

    super.onInit();
  }
}
