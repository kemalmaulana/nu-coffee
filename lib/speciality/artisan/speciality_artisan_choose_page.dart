import 'package:flutter/material.dart';
import 'package:nu_coffee/checkout/checkout_page.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';

class SpecialityArtisanChoosePage extends StatefulWidget {
  const SpecialityArtisanChoosePage({Key? key}) : super(key: key);

  @override
  _SpecialityArtisanChoosePageState createState() =>
      _SpecialityArtisanChoosePageState();
}

class _SpecialityArtisanChoosePageState
    extends State<SpecialityArtisanChoosePage> {
  String _selectedVariant = "Pilih varian";
  String _selectedRoast = "Pilih roast";
  String _selectedGrind = "Pilih kualitas grind";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [HeaderPage(activePage: 2), artisanPage(), FooterPage()],
        ),
      ),
    );
  }

  Widget artisanPage() {
    Size geom = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 150,
          width: geom.width,
          color: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Center(
              child: Text("ARTISAN COFFEE",
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
                  'assets/images/pic_jenis_kopi.JPG',
                  fit: BoxFit.cover,
                  height: 720,
                  width: geom.width * 0.33,
                ),
                Positioned(
                  child: Container(
                    color: Colors.black54,
                    width: 400,
                    padding: const EdgeInsets.all(40),
                    child: Center(
                      child: Text("JENIS KOPI",
                          style: TextStyle(
                              fontFamily: "Franklin",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.88,
                              color: Colors.white,
                              fontSize: 80)),
                    ),
                  ),
                  top: 50,
                  left: 20,
                  right: 20,
                ),
                Positioned(
                  child: Container(
                    color: Color.fromRGBO(253, 250, 213, 1),
                    // width: 200,
                    padding: const EdgeInsets.all(12),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(_selectedVariant,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Avenir',
                                fontSize: 18)),
                        DropdownButton<String>(
                          underline: SizedBox.shrink(),
                          dropdownColor: Color.fromRGBO(253, 250, 213, 1),
                          focusColor: Color.fromRGBO(253, 250, 213, 1),
                          icon: Icon(Icons.keyboard_arrow_down_sharp,
                              size: 50, color: Color.fromRGBO(42, 48, 50, 1)),
                          items: <String>['Geisha', 'Timor', 'Liberica']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Avenir',
                                      fontSize: 18)),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedVariant = value!;
                            });
                          },
                        ),
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
                  'assets/images/pic_speciality_roast.JPG',
                  fit: BoxFit.cover,
                  height: 720,
                  width: geom.width * 0.33,
                ),
                Positioned(
                  child: Container(
                    color: Colors.black54,
                    width: 400,
                    padding: const EdgeInsets.all(40),
                    child: Center(
                      child: Text("ROAST",
                          style: TextStyle(
                              fontFamily: "Franklin",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.88,
                              color: Colors.white,
                              fontSize: 80)),
                    ),
                  ),
                  top: 50,
                  left: 20,
                  right: 20,
                ),
                Positioned(
                  child: Container(
                    color: Color.fromRGBO(253, 250, 213, 1),
                    // width: 200,
                    padding: const EdgeInsets.all(12),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(_selectedRoast,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Avenir',
                                fontSize: 18)),
                        DropdownButton<String>(
                          underline: SizedBox.shrink(),
                          dropdownColor: Color.fromRGBO(253, 250, 213, 1),
                          focusColor: Color.fromRGBO(253, 250, 213, 1),
                          icon: Icon(Icons.keyboard_arrow_down_sharp,
                              size: 50, color: Color.fromRGBO(42, 48, 50, 1)),
                          items: <String>['Dark', 'Medium', 'Light']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Avenir',
                                      fontSize: 18)),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedRoast = value!;
                            });
                          },
                        ),
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
                    width: 400,
                    padding: const EdgeInsets.all(40),
                    child: Center(
                      child: Text("GRIND",
                          style: TextStyle(
                              fontFamily: "Franklin",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.88,
                              color: Colors.white,
                              fontSize: 80)),
                    ),
                  ),
                  top: 50,
                  left: 20,
                  right: 20,
                ),
                Positioned(
                  child: Container(
                    color: Color.fromRGBO(253, 250, 213, 1),
                    // width: 200,
                    padding: const EdgeInsets.all(12),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(_selectedGrind,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Avenir',
                                fontSize: 18)),
                        DropdownButton<String>(
                          underline: SizedBox.shrink(),
                          dropdownColor: Color.fromRGBO(253, 250, 213, 1),
                          focusColor: Color.fromRGBO(253, 250, 213, 1),
                          icon: Icon(Icons.keyboard_arrow_down_sharp,
                              size: 50, color: Color.fromRGBO(42, 48, 50, 1)),
                          items: <String>['Coarse', 'Medium', 'Fine']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Avenir',
                                      fontSize: 18)),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedGrind = value!;
                            });
                          },
                        ),
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckoutPage(
                                selectedBeans: null,
                                selectedVariant: _selectedVariant,
                                selectedRoast: _selectedRoast,
                                selectedGrind: _selectedGrind,
                                selectedBerat: "-",
                                selectedTotal: "Rp. 0",
                              )),
                    );
                  })),
        ),
      ],
    );
  }
}
