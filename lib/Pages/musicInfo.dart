import 'package:flutter/cupertino.dart';

class musicData {
  String path = "";
  String muzikAdi = "";
  String sarkiciIsmi = "";
  musicData(
    String path,
    String muzikAdi,
    String alsarkiciIsmiBaslik,
  ) {
    this.path = path;
    this.muzikAdi = muzikAdi;
    this.sarkiciIsmi = alsarkiciIsmiBaslik;
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
      "Alev Alev Yanıyorum"),
  musicData("assets/sarkici/MelikSahin.jpg", "MELİKE ŞAHİN", "Nasır"),
  musicData("assets/sarkici/MahzuniSerif.jpg", "MAHZUNU ŞERİF", "Sarhoş"),
  musicData("assets/sarkici/LeylaTheBand.jpg", "LEYLA THE BAND", "Yokluğunda"),
  musicData("assets/sarkici/Kadr.jpg", "KADR", "Hakim Bey"),
  musicData("assets/sarkici/Yalın.jpg", "YALIN", "Her şey Sensin"),
  musicData("assets/sarkici/LeylaTheBand.jpg", "LEYLA THE BAND", "Yokluğunda"),
  musicData("assets/sarkici/FeridunDuzagac.jpg", "FERİDUN DÜZAĞAÇ",
      "Alev Alev Yanıyorum"),
  musicData("assets/sarkici/MelikSahin.jpg", "MELİKE ŞAHİN", "Nasır"),
  musicData("assets/sarkici/MahzuniSerif.jpg", "MAHZUNU ŞERİF", "Sarhoş"),
  musicData("assets/sarkici/LeylaTheBand.jpg", "LEYLA THE BAND", "Yokluğunda"),
  musicData("assets/sarkici/Kadr.jpg", "KADR", "Hakim Bey"),
  musicData("assets/sarkici/Yalın.jpg", "YALIN", "Her şey Sensin"),
  musicData("assets/sarkici/LeylaTheBand.jpg", "LEYLA THE BAND", "Yokluğunda"),
];

//aktif değil
List<musicCategory> musiccategory = [
  musicCategory("Slow",
      "https://englishlive.ef.com/blog/wp-content/uploads/sites/2/2015/05/music-genres.jpg"),
];
