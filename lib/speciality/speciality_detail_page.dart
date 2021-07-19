import 'package:flutter/material.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';
import 'package:nu_coffee/speciality/arabica/speciality_arabica_page.dart';

class SpecialityDetailPage extends StatelessWidget {
  const SpecialityDetailPage({Key? key}) : super(key: key);

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
        // Container(
        //   height: 150,
        //   width: geom.width,
        //   color: Colors.black,
        //   padding: EdgeInsets.symmetric(vertical: 20),
        //   child: Center(
        //       child: Text("ARTISAN COFFEE",
        //           style: TextStyle(
        //               color: Colors.white,
        //               fontFamily: 'Franklin',
        //               fontSize: 48))),
        // ),
        Row(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/pic_speciality_grind.JPG',
                  fit: BoxFit.cover,
                  height: 720,
                  width: geom.width * 0.33,
                ),
                Positioned(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SpecialityArabicaPage()),
                      );
                    },
                    child: Container(
                      color: Colors.black54,
                      // width: 200,
                      padding: const EdgeInsets.all(24),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("ARABICA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Franklin',
                                  fontSize: 60)),
                        ],
                      )),
                    ),
                  ),
                  bottom: 50,
                  left: 50,
                  right: 50,
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/pic_speciality_grind.JPG',
                  fit: BoxFit.cover,
                  height: 720,
                  width: geom.width * 0.34,
                ),
                Positioned(
                  child: Container(
                    color: Colors.black54,
                    // width: 200,
                    padding: const EdgeInsets.all(24),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("ROBUSTA",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Franklin',
                                fontSize: 60)),
                      ],
                    )),
                  ),
                  bottom: 50,
                  left: 50,
                  right: 50,
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/pic_speciality_grind.JPG',
                  fit: BoxFit.cover,
                  height: 720,
                  width: geom.width * 0.33,
                ),
                Positioned(
                  child: Container(
                    color: Colors.black54,
                    // width: 200,
                    padding: const EdgeInsets.all(24),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("EXCELSA",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Franklin',
                                fontSize: 60)),
                      ],
                    )),
                  ),
                  bottom: 50,
                  left: 50,
                  right: 50,
                ),
              ],
            ),
          ],
        ),
        Container(
          height: 150,
          width: geom.width,
          color: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Center(
              child: InkWell(
                  child: Image.asset("assets/images/pic_order_now.png",
                      fit: BoxFit.cover),
                  onTap: () {})),
        ),
      ],
    );
  }
}
