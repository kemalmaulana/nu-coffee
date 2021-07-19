import 'package:flutter/material.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  String _name = "";
  String _email = "";
  String _message = "";

  @override
  Widget build(BuildContext context) {
    Size geom = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPage(activePage: 3),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 66,
                        padding: const EdgeInsets.all(8),
                        child: Text("Nama    :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Avenir',
                                fontSize: 16)),
                      ),
                      Divider(color: Colors.transparent, height: 12),
                      Container(
                        height: 66,
                        padding: const EdgeInsets.all(8),
                        child: Text("Email    :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Avenir',
                                fontSize: 16)),
                      ),
                      Divider(color: Colors.transparent, height: 12),
                      Container(
                        height: 66,
                        padding: const EdgeInsets.all(8),
                        child: Text("Pesan    :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Avenir',
                                fontSize: 16)),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: geom.width * 0.50,
                        color: Color.fromRGBO(90, 89, 77, 1),
                        padding: const EdgeInsets.all(8),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Avenir',
                              fontSize: 16),
                          onChanged: (value) {
                            setState(() {
                              _name = value;
                            });
                          },
                        ),
                      ),
                      Divider(color: Colors.transparent, height: 12),
                      Container(
                        width: geom.width * 0.50,
                        color: Color.fromRGBO(90, 89, 77, 1),
                        padding: const EdgeInsets.all(8),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Avenir',
                              fontSize: 16),
                          onChanged: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                        ),
                      ),
                      Divider(color: Colors.transparent, height: 12),
                      Container(
                        width: geom.width * 0.50,
                        height: geom.height * 0.33,
                        color: Color.fromRGBO(90, 89, 77, 1),
                        padding: const EdgeInsets.all(8),
                        child: TextField(
                          showCursor: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Avenir',
                              fontSize: 16),
                          onChanged: (value) {
                            setState(() {
                              _message = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: Colors.transparent, height: 40),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextButton(
                onPressed: () {
                  final snackBar = SnackBar(
                      content: Text(
                          'Terima kasih, aspirasi anda akan menjadi sebuah pertimbangan agar kami menjadi lebih baik :))'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text("Submit"),
              ),
            ),
            FooterPage()
          ],
        ),
      ),
    );
  }
}
