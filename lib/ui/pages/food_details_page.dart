part of 'pages.dart';

class FoodDetailsPage extends StatefulWidget {
  final Function? onBackButtonPressed;
  final Transaction? transaction;

  const FoodDetailsPage(
      {super.key, this.onBackButtonPressed, this.transaction});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(),
          SafeArea(
              child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.transaction!.food.picturePath),
                  fit: BoxFit.cover),
            ),
          )),
          SafeArea(
              child: ListView(
            children: [
              /// Back button
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      if (widget.onBackButtonPressed != null) {
                        widget.onBackButtonPressed!();
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black12),
                      child: Image.asset("assets/back_arrow_white.png"),
                    ),
                  ),
                ),
              ),

              /// Body
              Container(
                margin: const EdgeInsets.only(top: 180),
                padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.transaction!.food.name,
                              style: blackFontStyle2,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            RatingStars(rate: widget.transaction!.food.rate)
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  quantity = max(1, quantity - 1);
                                });
                              },
                              child: Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(width: 1),
                                    image: const DecorationImage(
                                        image: AssetImage("assets/btn_min.png"))),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              child: Text(
                                quantity.toString(),
                                textAlign: TextAlign.center,
                                style: blackFontStyle2,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                               setState(() {
                                  quantity = min(999, quantity + 1);
                               });
                              },
                              child: Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(width: 1),
                                    image: const DecorationImage(
                                        image: AssetImage("assets/btn_add.png"))),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
