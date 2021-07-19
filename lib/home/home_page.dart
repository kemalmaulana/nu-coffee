import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nu_coffee/home/testimoni/testimoni_page.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';
import 'package:nu_coffee/speciality/speciality_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'assets/images/slide_1.jpeg',
    'assets/images/slide_2.jpeg',
    'assets/images/slide_3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          HeaderPage(activePage: 1),
          carouselSlider(),
          specialityDetail(),
          TestimoniPage(),
          FooterPage()
        ],
      ),
    ));
  }

  Widget contentSelector(int index) {
    if (index == 0) {
      return Column(
        children: [
          Container(
            color: Colors.black26,
            width: 300,
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Speciality",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white)),
                Text("ARTISAN COFFEE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text("UNTUK KOPI SPESIAL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
          ),
          Divider(color: Colors.transparent),
          Container(
            color: Colors.black26,
            width: 300,
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Pelajari Lebih Lanjut",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                Text(">>", style: TextStyle(color: Colors.yellowAccent)),
                SizedBox(width: 10)
              ],
            ),
          )
        ],
      );
    } else if (index == 1) {
      return Column(
        children: [
          Container(
            color: Colors.black26,
            width: 300,
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Kopi Kami",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white)),
                Text("KOLEKSI KOPI LOKAL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text("DARI NU COFFEE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
          ),
          Divider(color: Colors.transparent),
          Container(
            color: Colors.black26,
            width: 300,
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Belanja Kopi Kami",
                    style: TextStyle(color: Colors.white)),
                SizedBox(width: 30),
                Text(">>", style: TextStyle(color: Colors.yellowAccent)),
                SizedBox(width: 10)
              ],
            ),
          )
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            width: 300,
            color: Colors.black26,
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Speciality",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white)),
                Text("CUSTOM COFFEE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text("SESUAI KEBUTUHANMU",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
          ),
          Divider(color: Colors.transparent),
          Container(
            color: Colors.black26,
            width: 300,
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Pelajari Lebih Lanjut",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                Text(">>", style: TextStyle(color: Colors.yellowAccent)),
                SizedBox(width: 10)
              ],
            ),
          )
        ],
      );
    }
  }

  Widget carouselSlider() {
    var geom = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(0xFF, 253, 250, 213),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 725,
              viewportFraction: 1,
              initialPage: 0,
              // enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              // scrollDirection: Axis.horizontal,
            ),
            items: imgList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        fit: StackFit.loose,
                        children: [
                          Image.asset(i, fit: BoxFit.cover, height: 725, width: geom.width),
                          Positioned(
                              child: contentSelector(imgList.indexOf(i)),
                              top: 400,
                              left: 100)
                        ],
                      )
                  );
                },
              );
            }).toList(),
          ),
        ),
        Container(color: Colors.green, height: 10, width: geom.width),
      ],
    );
  }

  Widget specialityDetail() {
    var geom = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(0xFF, 253, 250, 213),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: geom.width * 0.075),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: geom.width * 0.40,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset('assets/images/demo_coffee_1.png',
                            height: 200, width: 200),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Speciality",
                              style: _textStyle(20, FontWeight.normal)),
                          Divider(color: Colors.transparent),
                          Text(
                              "Pelajari Speciality yang kami sediakan di NU COFFEE!",
                              style: _textStyleCaption(16, FontWeight.normal)),
                          Divider(color: Colors.transparent),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SpecialityDetailPage()),
                              );
                            },
                            child: Container(
                              color: Colors.black,
                              width: 150,
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Detail",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 30),
                                  Text(">>",
                                      style: TextStyle(
                                          color: Colors.yellowAccent)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: geom.width * 0.15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/pic_manual.png',
                        fit: BoxFit.fill,
                        height: 200,
                        width: geom.width * 0.10),
                    Text("MANUAL",
                        style: TextStyle(fontFamily: "Franklin", fontSize: 28))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/pic_artisan.png',
                        fit: BoxFit.cover,
                        height: 200,
                        width: geom.width * 0.10),
                    Text("ARTISAN",
                        style: TextStyle(fontFamily: "Franklin", fontSize: 28))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/pic_espresso.png',
                        fit: BoxFit.cover,
                        height: 200,
                        width: geom.width * 0.10),
                    Text("ESPRESSO",
                        style: TextStyle(fontFamily: "Franklin", fontSize: 28))
                  ],
                )
              ],
            ),
          ),
          Container(color: Colors.yellow, height: 10, width: geom.width),
        ],
      ),
    );
  }

  TextStyle _textStyle(double size, FontWeight fw) {
    return TextStyle(
        fontFamily: "Franklin",
        fontSize: size,
        fontWeight: fw,
        color: Colors.black);
  }

  TextStyle _textStyleCaption(double size, FontWeight fw) {
    return TextStyle(
        fontFamily: "Franklin",
        fontSize: size,
        fontWeight: fw,
        color: Colors.black);
  }
}
