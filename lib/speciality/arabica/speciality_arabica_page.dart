import 'package:flutter/material.dart';
import 'package:nu_coffee/checkout/checkout_page.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';

class SpecialityArabicaPage extends StatelessWidget {
  const SpecialityArabicaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPage(activePage: 1),
            artisanPage(context),
            FooterPage()
          ],
        ),
      ),
    );
  }

  Widget artisanPage(BuildContext context) {
    Size geom = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: Color.fromRGBO(253, 250, 213, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/pic_product_arabica_badge.png',
                      fit: BoxFit.cover,
                      height: 300,
                      width: 200,
                    ),
                    Text("Arabica Wine Beans", style: _textStyle()),
                    Text("200 gram", style: _textStyle()),
                    Divider(color: Colors.transparent),
                    Text("Rp. 30.000", style: _textStyle()),
                    Divider(color: Colors.transparent, height: 24),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckoutPage(
                                      selectedBeans: "arabica",
                                      selectedBerat: "200 gram",
                                      selectedTotal: "Rp. 30.000",
                                      selectedVariant: "Arabica Wine Beans",
                                      selectedGrind: "-",
                                      selectedRoast: "-",
                                    )),
                          );
                        },
                        child: Image.asset("assets/images/pic_order.png"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/pic_product_arabica_badge.png',
                      fit: BoxFit.cover,
                      height: 300,
                      width: 200,
                    ),
                    Text("Arabica Natural", style: _textStyle()),
                    Text("200 gram", style: _textStyle()),
                    Divider(color: Colors.transparent),
                    Text("Rp. 20.000", style: _textStyle()),
                    Divider(color: Colors.transparent, height: 24),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckoutPage(
                                      selectedBeans: "arabica",
                                      selectedBerat: "200 gram",
                                      selectedTotal: "Rp. 20.000",
                                      selectedVariant: "Arabica Natural",
                                      selectedGrind: "-",
                                      selectedRoast: "-",
                                    )),
                          );
                        },
                        child: Image.asset("assets/images/pic_order.png"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/pic_product_arabica_badge.png',
                      fit: BoxFit.cover,
                      height: 300,
                      width: 200,
                    ),
                    Text("Local Arabica", style: _textStyle()),
                    Text("200 gram", style: _textStyle()),
                    Divider(color: Colors.transparent),
                    Text("Rp. 25.000", style: _textStyle()),
                    Divider(color: Colors.transparent, height: 24),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckoutPage(
                                      selectedBeans: "arabica",
                                      selectedBerat: "200 gram",
                                      selectedTotal: "Rp. 25.000",
                                      selectedVariant: "Local Arabica",
                                      selectedGrind: "-",
                                      selectedRoast: "-",
                                    )),
                          );
                        },
                        child: Image.asset("assets/images/pic_order.png"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  TextStyle _textStyle() {
    return TextStyle(
        color: Colors.black,
        fontFamily: "Avenir",
        fontWeight: FontWeight.w800,
        fontSize: 16);
  }
}
