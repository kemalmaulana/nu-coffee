import 'package:flutter/material.dart';
import 'package:nu_coffee/home/home_page.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';

class ThanksOrderPage extends StatelessWidget {
  const ThanksOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size geom = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPage(activePage: 0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text("TERIMA KASIH",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Franklin",
                      fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text("TELAH MENGORDER!",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Franklin",
                      fontWeight: FontWeight.w600)),
            ),
            Image.asset("assets/images/pic_thanks_for_purchasing.JPG",
                height: 500, width: geom.width, fit: BoxFit.fitWidth),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                    child: Text("KEMBALI KE HALAMAN UTAMA",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Franklin",
                            fontWeight: FontWeight.w600,
                            color: Colors.white))),
              ),
            ),
            FooterPage()
          ],
        ),
      ),
    );
  }
}
