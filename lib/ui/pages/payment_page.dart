part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction? transaction;
  const PaymentPage({super.key, this.transaction});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;

    return GeneralPage(
      title: "Payment Page",
      subtitle: "You deserver better Meal",
      onBackButtonPressed: () {},
      backColor: "FAFAFC".toColor(),
      child: Column(
        children: [
          /// Bagian atas
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Item Ordered",
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image:
                                    NetworkImage(transaction!.food.picturePath),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 198,
                              // 2 * defaultMargin -
                              // 60 -
                              // 12 -
                              // 78,
                              child: Text(
                                transaction!.food.name,
                                style: blackFontStyle2,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Text(
                              NumberFormat.currency(
                                locale: "id-ID",
                                symbol: "IDR ",
                                decimalDigits: 0,
                              ).format(transaction!.food.price),
                              style: greyFontStyle.copyWith(fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                      "${transaction!.quantity} item(s)",
                      style: greyFontStyle.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 8),
                  child: Text(
                    "Detail Transaction",
                    style: blackFontStyle3,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          transaction!.food.name,
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                            locale: "id-ID",
                            symbol: "IDR ",
                            decimalDigits: 0,
                          ).format(
                              transaction!.quantity * transaction!.food.price),
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Driver",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                            locale: "id-ID",
                            symbol: "IDR ",
                            decimalDigits: 0,
                          ).format(50000),
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Tax",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                            locale: "id-ID",
                            symbol: "IDR ",
                            decimalDigits: 0,
                          ).format(transaction!.quantity *
                              transaction!.food.price *
                              0.1),
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Total",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                            locale: "id-ID",
                            symbol: "IDR ",
                            decimalDigits: 0,
                          ).format(transaction!.food.price *
                                  transaction!.quantity *
                                  1.1 +
                              50000),
                          style: blackFontStyle3.copyWith(
                              fontWeight: FontWeight.w500,
                              color: "1ABC9C".toColor()),
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
              ],
            ),
          ),

          // Deliver To :

          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deliver To",
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Name",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          mockUser[1].name,
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Phone No.",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          mockUser[1].phoneNumber,
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Address",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          mockUser[1].address,
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "City",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          mockUser[1].city,
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? SpinKitFadingCircle(
                    size: 24,
                    color: mainColor,
                  )
                : ElevatedButton(
                    onPressed: () {
                      Get.to(SignUpPage());
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: mainColor),
                    child: Text(
                      "Checkout Now",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    )),
          ),
        ],
      ),
    );
  }
}
