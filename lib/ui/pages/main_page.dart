part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            color: "FAFAFC".toColor(),
          )),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedPage = index;
              });
            },
            children: const [
              Center(
                child: FoodPage(),
              ),
              Center(
                child: IllustrationPage(
                    title: "Makan Dulu :D",
                    subtitle: " So Makan Ngana?",
                    picturePath: "assets/love_burger.png",
                    buttonTap1: null,
                    buttonTitle1: "Klik Aku Dong"
                    ),
              ),
              Center(
                child: Text("Profile"),
              ),
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavBar(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });

                pageController.jumpToPage(selectedPage);
              },
            ),
          )
        ],
      ),
    );
  }
}
