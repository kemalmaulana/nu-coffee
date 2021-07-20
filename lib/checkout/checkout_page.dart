import 'package:flutter/material.dart';
import 'package:nu_coffee/checkout/thanks_order_page.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';

class CheckoutPage extends StatefulWidget {
  CheckoutPage(
      {Key? key,
      this.selectedBeans,
      this.selectedVariant,
      this.selectedRoast,
      this.selectedGrind,
      this.selectedBerat,
      this.selectedTotal})
      : super(key: key);

  late final String? selectedBeans;
  late final String? selectedVariant;
  late final String? selectedRoast;
  late final String? selectedGrind;
  late final String? selectedBerat;
  late final String? selectedTotal;

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [HeaderPage(activePage: 0), checkoutPage(), FooterPage()],
        ),
      ),
    );
  }

  Widget checkoutPage() {
    Size geom = MediaQuery.of(context).size;
    return Container(
      color: Color.fromRGBO(253, 250, 213, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("CHECKOUTS",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Franklin",
                    fontWeight: FontWeight.w600)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              selectedPreviewProduct(widget.selectedBeans),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Text("Varian    :",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Avenir',
                            fontSize: 16)),
                  ),
                  Divider(color: Colors.transparent, height: 12),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Text("Roast    :",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Avenir',
                            fontSize: 16)),
                  ),
                  Divider(color: Colors.transparent, height: 12),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Text("Grind    :",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Avenir',
                            fontSize: 16)),
                  ),
                  Divider(color: Colors.transparent, height: 12),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Text("Berat    :",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Avenir',
                            fontSize: 16)),
                  ),
                  Divider(color: Colors.transparent, height: 24),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Text("Total",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Avenir',
                            fontSize: 16)),
                  )
                ],
              ),
              SizedBox(width: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: geom.width * 0.50,
                    color: Color.fromRGBO(90, 89, 77, 1),
                    padding: const EdgeInsets.all(8),
                    child: Text(widget.selectedVariant ?? "-",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Avenir',
                            fontSize: 16)),
                  ),
                  Divider(color: Colors.transparent, height: 12),
                  Container(
                    width: geom.width * 0.50,
                    color: Color.fromRGBO(90, 89, 77, 1),
                    padding: const EdgeInsets.all(8),
                    child: Text(widget.selectedRoast ?? "-",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Avenir',
                            fontSize: 16)),
                  ),
                  Divider(color: Colors.transparent, height: 12),
                  Container(
                    width: geom.width * 0.50,
                    color: Color.fromRGBO(90, 89, 77, 1),
                    padding: const EdgeInsets.all(8),
                    child: Text(widget.selectedGrind ?? "-",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Avenir',
                            fontSize: 16)),
                  ),
                  Divider(color: Colors.transparent, height: 12),
                  Container(
                    width: geom.width * 0.50,
                    color: Color.fromRGBO(90, 89, 77, 1),
                    padding: const EdgeInsets.all(8),
                    child: Text(widget.selectedBerat ?? "-",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Avenir',
                            fontSize: 16)),
                  ),
                  Divider(color: Colors.transparent, height: 24),
                  Container(
                    width: geom.width * 0.50,
                    color: Color.fromRGBO(90, 89, 77, 1),
                    padding: const EdgeInsets.all(8),
                    child: Text(widget.selectedTotal ?? "-",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Avenir',
                            fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.transparent, height: 40),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: InkWell(
              child: Image.asset("assets/images/pic_order.png"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ThanksOrderPage()),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget selectedPreviewProduct(String? product) {
    switch (product) {
      case "robusta":
        return Image.asset("assets/images/pic_product_robusta.png");
      case "excelsa":
        return Image.asset("assets/images/pic_product_excelsa.png");
      case "arabica":
        return Image.asset("assets/images/pic_product_arabica.png");
      default:
        return Image.asset("assets/images/pic_product_speciality.png");
    }
  }
}
