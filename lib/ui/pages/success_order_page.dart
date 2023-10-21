part of 'pages.dart';

class SuccessOrderPage extends StatefulWidget {
  const SuccessOrderPage({super.key});

  @override
  State<SuccessOrderPage> createState() => _SuccessOrderPageState();
}

class _SuccessOrderPageState extends State<SuccessOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
          title: "You've made order",
          subtitle:
              "Just Stay at home while we are\preparing you're best food's",
          picturePath: "assets/bike.png",
          buttonTap1: null,
          buttonTitle1: "Order Other Food's",
          buttonTap2: null,
          buttonTitle2: "View my order",
          ),
    );
  }
}
