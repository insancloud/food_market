import 'package:flutter/material.dart';
import 'package:food_market/models/models.dart';
import 'package:food_market/ui/pages/pages.dart';
import 'package:food_market/ui/widgets/widgets.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: PaymentPage(
      //   transaction: Transaction(food: mockFoods[4], quantity: 2, id: 3, dateTime: DateTime.now(), total:(mockFoods[0].price * 2* 1.1).toInt() + 50000 , status: TransactionStatus.on_delivery, user: mockUser[1], ),
      // ),
      home: MainPage(),
      // home: IllustrationPage(title: "Judul atuh", subtitle: "Sub judul Atuh",),
    );
  }
}

