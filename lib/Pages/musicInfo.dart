import 'package:flutter/cupertino.dart';

class musicData {
  String path = "";
  String muzikAdi = "";
  String sarkiciIsmi = "";
  String url = "";
  musicData(
    String path,
    String muzikAdi,
    String alsarkiciIsmiBaslik,
    String url,
  ) {
    this.path = path;
    this.muzikAdi = muzikAdi;
    this.sarkiciIsmi = alsarkiciIsmiBaslik;
    this.url = url;
  }
}

class musicCategory {
  String kategoriIsmi = "";
  String resimUrl = "";
  musicCategory(String kategoriIsmi, String resimUrl) {
    this.kategoriIsmi = kategoriIsmi;
    this.resimUrl = resimUrl;
  }
}

//Gelen Müzik verileri burada tutulacak ek bir alan kullanımına gerek duyulmayacak.

List<musicData> musicdatas = [
  musicData("assets/sarkici/FeridunDuzagac.jpg", "FERİDUN DÜZAĞAÇ",
      "Alev Alev Yanıyorum",
      "https://www.youtube.com/watch?v=p5QepsqnLwo&ab_channel=FeridunD%C3%BCza%C4%9Fa%C3%A7-Topic"),
  musicData("assets/sarkici/Kadr.jpg", "KADR", "Hakim Bey",
      "https://www.youtube.com/watch?v=dYLeqJdv6PM&ab_channel=KADRTV"),
  musicData(
      "assets/sarkici/FeridunDuzagac.jpg",
      "FERİDUN DÜZAĞAÇ",
      "Alev Alev Yanıyorum",
      "https://www.youtube.com/watch?v=p5QepsqnLwo&ab_channel=FeridunD%C3%BCza%C4%9Fa%C3%A7-Topic"),
  musicData("assets/sarkici/Kadr.jpg", "KADR", "Hakim Bey",
      "https://www.youtube.com/watch?v=dYLeqJdv6PM&ab_channel=KADRTV"),
  musicData(
      "assets/sarkici/FeridunDuzagac.jpg",
      "FERİDUN DÜZAĞAÇ",
      "Alev Alev Yanıyorum",
      "https://www.youtube.com/watch?v=p5QepsqnLwo&ab_channel=FeridunD%C3%BCza%C4%9Fa%C3%A7-Topic"),
  musicData("assets/sarkici/Kadr.jpg", "KADR", "Hakim Bey",
      "https://www.youtube.com/watch?v=dYLeqJdv6PM&ab_channel=KADRTV"),
      
      
];

//aktif değil
List<musicCategory> musiccategory = [
  musicCategory("Slow",
      "https://englishlive.ef.com/blog/wp-content/uploads/sites/2/2015/05/music-genres.jpg"),
];
