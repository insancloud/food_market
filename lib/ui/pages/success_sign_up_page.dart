part of 'pages.dart';

class SuccessSignUpPage extends StatefulWidget {
  const SuccessSignUpPage({super.key});

  @override
  State<SuccessSignUpPage> createState() => _SuccessSignUpPageState();
}

class _SuccessSignUpPageState extends State<SuccessSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
          title: "Yeay!. Completed",
          subtitle:
              "Now you are able to order\nsome foods as a self reward",
          picturePath: "assets/food_wishes.png",
          buttonTap1: null,
          buttonTitle1: "Find Foods",
         
          ),
    );
  }
}
