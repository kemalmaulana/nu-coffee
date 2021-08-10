import 'package:flutter/material.dart';
import 'package:nu_coffee/home/coming/coming_soon_page.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';
import 'package:nu_coffee/speciality/artisan/speciality_artisan_choose_page.dart';

class SpecialityPage extends StatefulWidget {
  const SpecialityPage({Key? key}) : super(key: key);

  @override
  _SpecialityPageState createState() => _SpecialityPageState();
}

class _SpecialityPageState extends State<SpecialityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          HeaderPage(activePage: 2),
          specialityContent(),
          FooterPage()
        ],
      )),
    );
  }

  Widget specialityContent() {
    Size geom = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 150,
          width: geom.width,
          color: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Center(
              child: Text("SPECIALITY",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Franklin',
                      fontSize: 48))),
        ),
        Row(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/pic_artisan_coffee.JPG',
                  fit: BoxFit.cover,
                  height: 720,
                  width: geom.width * 0.5,
                ),
                Positioned(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SpecialityArtisanChoosePage()),
                      );
                    },
                    child: Container(
                      color: Colors.black54,
                      width: 400,
                      padding: const EdgeInsets.all(40),
                      child: Center(
                        child: Text("ARTISAN COFFEE",
                            style: TextStyle(
                                fontFamily: "Franklin",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.88,
                                color: Colors.white,
                                fontSize: 72)),
                      ),
                    ),
                  ),
                  bottom: 50,
                  left: 100,
                  right: 100,
                )
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/pic_manual_brew.JPG',
                  fit: BoxFit.cover,
                  height: 720,
                  width: geom.width * 0.5,
                ),
                Positioned(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComingSoonPage()),
                      );
                    },
                    child: Container(
                      color: Colors.black54,
                      width: 400,
                      padding: const EdgeInsets.all(40),
                      child: Center(
                        child: Text("MANUAL BREW",
                            style: TextStyle(
                                fontFamily: "Franklin",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.88,
                                color: Colors.white,
                                fontSize: 72)),
                      ),
                    ),
                  ),
                  bottom: 50,
                  left: 100,
                  right: 100,
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
