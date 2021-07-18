import 'package:flutter/material.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPage(activePage: 4),
            // SizedBox(height: 400),
            aboutContent(),
            FooterPage()
          ],
        ),
      ),
    );
  }

  Widget aboutContent() {
    Size geom = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              fit: StackFit.loose,
              children: [
                Image.asset('assets/images/pic_tentang.JPG',
                    height: 240, width: geom.width, fit: BoxFit.cover),
                Positioned(
                    child: Container(
                      color: Colors.black54,
                      width: 300,
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tentang",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                  fontSize: 18)),
                          Divider(height: 12, color: Colors.transparent),
                          Text("TENTANG",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                                letterSpacing: 0.8,
                                fontFamily: "Franklin",
                              )),
                          Divider(height: 12, color: Colors.transparent),
                          Text("NU COFFEE",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                                letterSpacing: 0.8,
                                fontFamily: "Franklin",
                              )),
                        ],
                      ),
                    ),
                    top: 100,
                    left: 100)
              ],
            )),
        Container(
          color: Color.fromRGBO(49, 35, 29, 1),
          height: 270,
          width: geom.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: geom.width * 0.0575),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tentang NU Coffee",
                    style: _textStyle(40, FontWeight.w600)),
                Divider(color: Colors.transparent, height: 12),
                Flexible(
                    child: Text(
                        "NU Coffee merupakan kopi bubuk alami yang diproduksi oleh PONPES Assalafiyah Annahdliyyah yang berlokasi di Curugsewu, Patean, Kendal. NU Coffee memproduksi 3 jenis kopi bubuk, seperti kopi Excelsa, Arabica, dan Robusta. NU Coffee menjual produk mereka dengan fine grinding, dimana fine grind merupakan gilingan kopi yang halus.\n\n Penggunaan NU Coffee berasal dari PONPES yang berada di bawah PBNU. Tujuannya, agar produk kopi ini dapat menarik minat masyarakat Nahdlatul Ulama lebih dekat. Utamanya, agar NU bagian pusat mau memperhatikan produk yang mereka buat ini.",
                        style: _textStyleCaption(20, FontWeight.w600)))
              ],
            ),
          ),
        ),
        Container(
          color: Color.fromRGBO(253, 250, 213, 1),
          height: 240,
          width: geom.width,
          child: Row(
            children: [
              Container(
                width: geom.width * 0.7,
                padding: EdgeInsets.only(
                    left: geom.width * 0.0575, top: geom.width * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("KEBUN KAMI", style: _textStyle2(40, FontWeight.w600)),
                    Divider(color: Colors.transparent, height: 12),
                    Flexible(
                        child: Text(
                            "NU Coffee memiliki kebun kopi pribadi yang mengembangkan varian kopi yang cukup lang- ka di pasaran, Excelsa. Sedangkan untuk penggilingan dan roastingnya sendiri, dilakukan di ruang kopi yang ada di Pondok Pesantrin Assalafiyah Annadhliyah.",
                            style: _textStyleCaption2(20, FontWeight.w600)))
                  ],
                ),
              ),
              Image.asset(
                'assets/images/pic_tentang_2.png',
                height: 250,
                width: geom.width * 0.3,
                fit: BoxFit.cover,
              )
            ],
          ),
        )
      ],
    );
  }

  TextStyle _textStyle(double size, FontWeight fw) {
    return TextStyle(
        fontFamily: "Franklin",
        fontSize: size,
        fontWeight: fw,
        color: Colors.white);
  }

  TextStyle _textStyle2(double size, FontWeight fw) {
    return TextStyle(
        fontFamily: "Franklin",
        fontSize: size,
        fontWeight: fw,
        color: Color.fromRGBO(49, 35, 29, 1));
  }

  TextStyle _textStyleCaption(double size, FontWeight fw) {
    return TextStyle(
        fontFamily: "Avenir",
        fontSize: size,
        fontWeight: fw,
        color: Colors.white);
  }

  TextStyle _textStyleCaption2(double size, FontWeight fw) {
    return TextStyle(
        fontFamily: "Avenir",
        fontSize: size,
        fontWeight: fw,
        color: Color.fromRGBO(49, 35, 29, 1));
  }
}
