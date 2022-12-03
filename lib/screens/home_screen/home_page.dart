import 'package:crypto_list/screens/home_screen/controller/home_controller.dart';
import 'package:crypto_list/screens/home_screen/data/model/crypto_list_model.dart';
import 'package:crypto_list/screens/home_screen/ui/card_widget_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 123, 121, 142),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 123, 121, 142),
        title: const Text(
          'CryptoList',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
          )
        ],
        centerTitle: false,
        elevation: 4,
      ),
      body: Column(children: [
        FutureBuilder<List<CryptoListModel>>(
            future: controller.getList(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<CryptoListModel> data = snapshot.data ?? [];
                return Expanded(
                  child: ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: data[i].id == data.first.id ||
                                    data[i].id == data.last.id
                                ? 10
                                : 0,
                          ),
                          child: CardWidgetView(
                            name: data[i].name.toString(),
                            symbol: data[i].symbol.toString(),
                            image: data[i].image.toString(),
                            currentPrice: data[i].currentPrice ?? 0,
                            priceChangePercentage24h:
                                data[i].priceChangePercentage24h ?? 0,
                          ),
                        );
                      }),
                );
              } else {
                return const CircularProgressIndicator();
              }
            }),
      ]),
    );
  }
}
