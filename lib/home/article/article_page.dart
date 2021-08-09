import 'package:flutter/material.dart';
import 'package:nu_coffee/include/footer_page.dart';
import 'package:nu_coffee/include/header_page.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key? key, required this.page}) : super(key: key);

  final int page;

  @override
  Widget build(BuildContext context) {
    Size geom = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPage(activePage: 1),
            Container(
              width: geom.width,
              color: const Color.fromARGB(0xFF, 253, 250, 213),
              child: Column(
                children: [
                  _title(page),
                  _image(context, page),
                  _caption(context, page),
                ],
              ),
            ),
            FooterPage()
          ],
        ),
      ),
    );
  }

  Widget _title(int page) {
    switch (page) {
      case 1:
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text("ARTISAN COFFEE", style: _textTitle()),
              Text("UNTUK KOPI SPESIAL", style: _textTitle()),
            ],
          ),
        );
      case 2:
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text("KOLEKSI KOPI LOKAL", style: _textTitle()),
              Text("DARI NU COFFEE", style: _textTitle()),
            ],
          ),
        );
      default:
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text("CUSTOM COFFEE", style: _textTitle()),
              Text("SESUAI KEBUTUHAN", style: _textTitle()),
            ],
          ),
        );
    }
  }

  Widget _image(BuildContext context, int page) {
    Size geom = MediaQuery.of(context).size;
    switch (page) {
      case 1:
        return Image.asset("assets/images/slide_1.jpeg",
            fit: BoxFit.cover, height: 725, width: geom.width);
      case 2:
        return Image.asset("assets/images/slide_2.jpeg",
            fit: BoxFit.cover, height: 725, width: geom.width);
      default:
        return Image.asset("assets/images/slide_3.jpeg",
            fit: BoxFit.cover, height: 725, width: geom.width);
    }
  }

  Widget _caption(BuildContext context, int page) {
    Size geom = MediaQuery.of(context).size;
    switch (page) {
      case 1:
        return Container(
          color: Color.fromRGBO(253, 250, 213, 1),
          width: geom.width * 0.88,
          height: 480,
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  child: Text(
                      "NU COFFEE menyediakan spesialitasnya dengan kopi artisan. Kopi Artisan dibuat dengan penuh kehati-hatian, pertimbangan, dan passion, ini merupakan sesuatu yang baru dalam memberikan kualitas rasa yang tinggi terhadap kopi yang dihasilkan. Dalam pembuatannya artisan tidak bisa diburu-buru, dan tentunya tidak bisa ditangani oleh amatiran, dibutuhkan seseorang yang memiliki pengalaman, passion, dan keahlian khusus untuk bisa menanganinya dengan baik.\n\nTerdapat jenis kopi Geisha, Timor, dan Liberica yang bisa dipilih sesuai keinginan dan NU COFFEE juga memberikan pilihan terhadap tingkat roasting dari mulai dark, medium, dan light. Proses roasting dapat memunculkan dan meningkatkan rasa asli dari tiap biji kopi sehingga terasa lebih nikmat. Selain itu, roasting merupakan sebuah bentuk seni yang membutuhkan banyak waktu, dedikasi, dan latihan. Ketiga hal itu menjadi patokan untuk bisa mencapai status seorang artisan. Tidak hanya disitu, untuk mendapatkan rasa yang lebih optimal NU COFFEE memberikan pilihan terhadap tingkat gilingan kopinya dari mulai coarse, medium, dan fine. Proses dan pilihan ini menjadi spesialitas NU COFFEE dalam upaya menyajikan kopi artisan yang berkualitas.",
                      style: _textCaption()))
            ],
          ),
        );
      case 2:
        return Container(
          color: Color.fromRGBO(253, 250, 213, 1),
          width: geom.width * 0.88,
          height: 480,
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  child: Text(
                      "Dianugerahi tanah subur dan iklim bersahabat menjadikan Indonesia cocok sebagai tempat untuk tumbuhnya berbagai komoditas unggulan, tidak terkecuali kopi. Ada banyak varian kopi menarik, baik itu jenis Robusta atau Arabika, yang memiliki keunikan rasa berbeda satu sama lain. Beragamnya jenis kopi unik ini disebut sebagai sepcialty coffee, dan Indonesia adalah salah satu negara yang punya paling banyak varietas unik. Penyebarannya merata dari ujung utara Sumatera hingga Papua, semua memiliki keunggulannya masing-masing.\n\nNU COFFEE memanfaatkan berkah dan nikmat dari tuhan melalui kesuburan tanah Curug Sewu untuk mengembangkan varietas kopi yang kami kembangkan di kebun kami sendiri. Masing-masing produk tentunya mempunyai keunggulan dan penggemar tersendiri, dan andapun bisa semakin mengulik biji kopi Nusantara dan tentunya biji kopi Excelsa asli Kendal.",
                      style: _textCaption()))
            ],
          ),
        );
      default:
        return Container(
          color: Color.fromRGBO(253, 250, 213, 1),
          width: geom.width * 0.88,
          height: 480,
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  child: Text(
                      "NU COFFEE memberikan kebebasan kepada penikmat kopi untuk bisa menikmati kopi yang sesuai dengan kebutuhan mereka. Setiap penikmat kopi memiliki pilihannya tersendiri terhadap jenis kopi, tingkat roasting, hingga grind yang diinginkan. Hal ini menjadi upaya bagi NU COFFEE dalam memberikan pengalaman maksimal kepada setiap orang dalam menikmati kopi yang cocok baginya. Meskipun begitu, kualitas kopi yang dihasilkan tetap diperhatikan dengan baik. NU COFFEE menjamin kualitas dari biji kopi hingga proses pengolahan kopi, ditangani oleh ahlinya dan dibuat dengan passion.\n\nNU COFEE juga memberikan dua kategori kopi, yaitu unggulan dan speciality. Dalam kopi unggulan terdapat jenis kopi Arabica, Robusta, dan Excelsa, sedangkan untuk speciality NU COFFEE menyediakan jenis kopi Geisha, Timor, dan Liberica. Semua jenis kopi itu bisa dipilih oleh setiap orang, sesuai dengan kebutuhannya.",
                      style: _textCaption()))
            ],
          ),
        );
    }
  }

  TextStyle _textTitle() {
    return TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 40,
        fontFamily: "Franklin");
  }

  TextStyle _textCaption() {
    return TextStyle(
        fontFamily: "Avenir",
        fontSize: 22,
        fontWeight: FontWeight.w800,
        color: Colors.black);
  }
}
