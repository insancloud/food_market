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
      home: FoodDetailsPage(
        transaction: Transaction(food: mockFoods[1], quantity: 1, id: 3, dateTime: DateTime.now(), total: 12000, status: TransactionStatus.on_delivery, user: mockUser ),
      ),
    );
  }
}
