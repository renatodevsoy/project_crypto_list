import 'package:crypto_list/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'CryptoList',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        getPages: AppPages.routes);
  }
}
