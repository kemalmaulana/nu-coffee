import 'package:flutter/material.dart';
import 'package:nu_coffee/home/home_page.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPage(activePage: 0),
            Container(
              color: Color.fromRGBO(253, 250, 213, 1),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text("COMING SOON!!",
                        style: TextStyle(
                            fontSize: 32,
                            fontFamily: "Franklin",
                            fontWeight: FontWeight.w600)),
                  ),
                  Image.asset("assets/images/pic_product_robusta_badge.png",
                      height: 500, width: 500, fit: BoxFit.fitWidth),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                          color: Color.fromRGBO(90, 89, 77, 1),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 8),
                          child: Text("KEMBALI KE HALAMAN UTAMA",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: "Franklin",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white))),
                    ),
                  ),
                ],
              ),
            ),
            FooterPage()
          ],
        ),
      ),
    );
  }
}
