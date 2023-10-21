part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;

  List<Transaction> inProgress = mockTransaction
      .where((element) =>
          element.status == TransactionStatus.on_delivery ||
          element.status == TransactionStatus.pending)
      .toList();
  List<Transaction> past = mockTransaction
      .where((element) =>
          element.status == TransactionStatus.delivered ||
          element.status == TransactionStatus.cancelled)
      .toList();

  @override
  Widget build(BuildContext context) {
    if (inProgress.length == 0 && past.length == 0) {
      return const IllustrationPage(
        title: "Ouch Lapar",
        subtitle: " Seems like you have not\norder any food",
        picturePath: "assets/love_burger.png",
        buttonTap1: null,
        buttonTitle1: "Order Foods",
      );
    } else {
      double listItemWidth =
          MediaQuery.of(context).size.width - 2 * defaultMargin;

      return ListView(
        children: [
          Column(
            children: [
              /// Header
              // Container(
              //   height: 100,
              //   width: double.infinity,
              //   margin: EdgeInsets.only(bottom: defaultMargin),
              //   padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              //   color: Colors.white,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         "Your Orders",
              //         style: blackFontStyle1,
              //       ),
              //       Text(
              //         "Wait for the best meal",
              //         style:
              //             greyFontStyle.copyWith(fontWeight: FontWeight.w300),
              //       ),
              //     ],
              //   ),
              // ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your Orders",
                          style: blackFontStyle1,
                        ),
                        Text(
                          "Wait for the best meal",
                          style: greyFontStyle.copyWith(
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage("assets/ic_order.png"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),

              /// Body
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                        selectedIndex: selectedIndex,
                        titles: ["In Progress", "Past Orders"],
                        onTap: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        }),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: (selectedIndex == 0 ? inProgress : past)
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(
                                    right: defaultMargin,
                                    left: defaultMargin,
                                    bottom: 16),
                                child: OrderListItem(
                                    transaction: e, itemWidth: listItemWidth),
                              ))
                          .toList(),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      );
    }
  }
}
