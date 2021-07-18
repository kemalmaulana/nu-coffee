import 'package:flutter/material.dart';
import 'package:nu_coffee/about/about_page.dart';
import 'package:nu_coffee/home/home_page.dart';
import 'package:nu_coffee/speciality/speciality_page.dart';

class HeaderPage extends StatefulWidget {
  HeaderPage({Key? key, required this.activePage}) : super(key: key);

  final int activePage;

  @override
  _HeaderPageState createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {
  @override
  Widget build(BuildContext context) {
    var geom = MediaQuery.of(context).size;
    return Container(
      width: geom.width,
      child: Column(
        children: [
          Container(
            width: geom.width,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    // Icon(Icons.ac_unit, color: Colors.white),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Image.asset("assets/images/logo_kopi_nu.png",
                          height: 100, width: 100),
                    ),
                    SizedBox(width: 30),
                    InkWell(
                        child: AbsorbPointer(
                          child: Text("KOPI KAMI",
                              style: widget.activePage == 1
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Franklin",
                                      color: Colors.white,
                                      fontSize: 18)
                                  : TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Franklin",
                                      color: Colors.white54,
                                      fontSize: 16)),
                        ),
                        onTap: () {
                          // final snackBar =
                          //     SnackBar(content: Text('Tapped Kopi Kami'));
                          //
                          // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        }),
                    SizedBox(width: 15),
                    Container(
                        width: 4,
                        height: 24,
                        decoration: BoxDecoration(color: Colors.yellow)),

                    SizedBox(width: 30),
                    InkWell(
                        child: AbsorbPointer(
                          child: Text("SPECIALITY",
                              style: widget.activePage == 2
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Franklin",
                                      color: Colors.white,
                                      fontSize: 18)
                                  : TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Franklin",
                                      color: Colors.white54,
                                      fontSize: 16)),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SpecialityPage()),
                          );
                        }),
                    SizedBox(width: 15),
                    Container(
                        width: 4,
                        height: 24,
                        decoration: BoxDecoration(color: Colors.yellow)),

                    SizedBox(width: 30),
                    InkWell(
                        child: AbsorbPointer(
                          child: Text("KONTAK",
                              style: widget.activePage == 3
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Franklin",
                                      color: Colors.white,
                                      fontSize: 18)
                                  : TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Franklin",
                                      color: Colors.white54,
                                      fontSize: 16)),
                        ),
                        onTap: () {
                          final snackBar = SnackBar(
                              content:
                                  Text('Kontak currently on development...'));

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }),
                    SizedBox(width: 15),
                    Container(
                        width: 4,
                        height: 24,
                        decoration: BoxDecoration(color: Colors.yellow)),

                    SizedBox(width: 30),
                    InkWell(
                        child: AbsorbPointer(
                          child: Text("TENTANG",
                              style: widget.activePage == 4
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Franklin",
                                      color: Colors.white,
                                      fontSize: 18)
                                  : TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Franklin",
                                      color: Colors.white54,
                                      fontSize: 16)),
                        ),
                        onTap: () {
                          // final snackBar =
                          //     SnackBar(content: Text('Tapped Tentang'));
                          //
                          // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutPage()),
                          );
                        }),
                    SizedBox(width: 15),
                    Container(
                        width: 4,
                        height: 24,
                        decoration: BoxDecoration(color: Colors.yellow)),
                  ],
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(color: Colors.green, height: 10, width: geom.width),
              Center(
                child: Container(
                    color: Colors.yellow, height: 10, width: geom.width / 1.2),
              )
            ],
          ),
        ],
      ),
    );
  }

}
