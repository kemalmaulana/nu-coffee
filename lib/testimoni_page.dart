import 'package:flutter/material.dart';

class TestimoniPage extends StatelessWidget {
  const TestimoniPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var geom = MediaQuery.of(context).size;
    return Container(
      width: geom.width,
      color: const Color.fromARGB(0xFF, 253, 250, 213),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(color: Colors.yellow, height: 10, width: geom.width),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Center(
                child: Text("TESTIMONI",
                    style: _textStyle(48, FontWeight.normal))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.black54,
                      ),
                    ),
                    Image.asset("assets/images/pic_farhan.png",
                        height: 200, width: 200),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("FARHAN, 24 TAHUN",
                      style: _textStyle(24, FontWeight.normal)),
                  Text("PENIKMAT KOPI",
                      style: _textStyle(24, FontWeight.normal)),
                  Container(
                    color: Colors.black54,
                    width: geom.width*0.67,
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Flexible(child: Text("Jika kamu salah satu penikmat kopi Robusta, jangan lewatkan untuk mencicipi kopi merek NU COFFEE ini. Kopi robusta asli Kendal ini dibuat dari biji kopi kualitas terbaik sehingga rasa dan aromanya pasti disukai oleh siapa saja. Untuk menikmati aroma harumnya, tuangkan air dengan suhu 70 derajat celcius saat menyeduh kopi ini.", style: _textStyleCaption(18, FontWeight.w500)))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("GALIH, 22 TAHUN",
                      style: _textStyle(24, FontWeight.normal)),
                  Text("MAHASISWA",
                      style: _textStyle(24, FontWeight.normal)),
                  Container(
                    color: Colors.black54,
                    width: geom.width*0.67,
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Flexible(child: Text("Kopi Excelsa adalah jenis kopi yang telah dikenal sejak lama. Kamu bisa menikmati aroma dan rasa khas kopi ini dalam secangkir kopi murni NU Coffee. Untuk keamanan dan kualitasnya, tak perlu diragukan lagi. Kopi ini telah tersertifikasi oleh BPOM, SNI dan MUI sehingga aman dan halal diminum. Kopi ini dapat dinikmati dengan tambahan gula, susu atau krimmer. Selain itu juga tetap nikmat diseduh panas ataupun", style: _textStyleCaption(18, FontWeight.w500)))
                      ],
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.black54,
                      ),
                    ),
                    Image.asset("assets/images/pic_galih.png",
                        height: 200, width: 200),
                  ],
                ),
              ),
            ],
          )
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
        fontFamily: "Avenir",
        fontSize: size,
        fontWeight: fw,
        color: const Color.fromARGB(0xFF, 253, 250, 213));
  }
}
