import 'package:flutter/material.dart';
import 'package:nu_coffee/about/about_page.dart';
import 'package:nu_coffee/contact/contact_us_page.dart';
import 'package:nu_coffee/home/home_page.dart';

class FooterPage extends StatefulWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  _FooterPageState createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {
    var geom = MediaQuery.of(context).size;
    return Container(
      // height: geom.height*0.25,
      height: 200,
      width: geom.width,
      color: Color.fromRGBO(42, 48, 50, 1),
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: geom.width * 0.20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NU COFFEE", style: _textStyle(28, FontWeight.bold)),
                  Flexible(
                      child: Text(
                          "NU COFFEE MERUPAKAN KOPI BUBUK ALAMI YG DI PRODUKSI OLEH PONPES ASSALAFIYAH ANNAHDLIYYAH YANG BERLOKASI DI CURUGSEWU PATEAN, KENDAL.",
                          style: _textStyle(14, FontWeight.normal)))
                ],
              ),
            ),
            SizedBox(width: geom.width * 0.3),
            Container(
              width: geom.width * 0.20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("QUICK LINK", style: _textStyle(28, FontWeight.normal)),
                  Divider(color: Colors.transparent),
                  Column(
                    children: [
                      InkWell(
                          child: Text("TENTANG",
                              style: _textStyle(14, FontWeight.normal)),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutPage()),
                            );
                          }),
                      InkWell(
                        child: Text("KOPI KAMI",
                            style: _textStyle(14, FontWeight.normal)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                      InkWell(
                        child: Text("SPECIALITY",
                            style: _textStyle(14, FontWeight.normal)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactUsPage()),
                          );
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => SpecialityPage()),
                          // );
                        },
                      ),
                      InkWell(
                        child: Text("KONTAK",
                            style: _textStyle(14, FontWeight.normal)),
                        onTap: () {
                          final snackBar = SnackBar(
                              content:
                                  Text('Kontak currently on development...'));

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _textStyle(double size, FontWeight fw) {
    return TextStyle(
        fontFamily: "Franklin",
        fontSize: size,
        fontWeight: fw,
        color: Colors.grey);
  }
}
