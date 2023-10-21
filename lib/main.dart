import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_market/cubit/cubit.dart';
import 'package:food_market/cubit/user_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => FoodCubit()),
        BlocProvider(create: (_) => TransactionCubit()),
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // home: PaymentPage(
          //   transaction: Transaction(food: mockFoods[4], quantity: 2, id: 3, dateTime: DateTime.now(), total:(mockFoods[0].price * 2* 1.1).toInt() + 50000 , status: TransactionStatus.on_delivery, user: mockUser[1], ),
          // ),
          home: MainPage()
          // home: IllustrationPage(title: "Judul atuh", subtitle: "Sub judul Atuh",),
          ),
    );
  }
}
