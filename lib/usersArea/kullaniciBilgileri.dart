class Kullanici {
  String ePosta = "";
  String parola = "";

  Kullanici(String ePosta, String parola) {
    this.ePosta = ePosta;
    this.parola = parola;
  }
}

class YeniKullanici {
  String telefonNo = "";
  String kullaniciAdi = "";
  String ePosta = "";
  String parola = "";

  YeniKullanici(
      String kullaniciAdi, String telefonNo, String ePosta, String parola) {
    this.kullaniciAdi = kullaniciAdi;
    this.telefonNo = telefonNo;
    this.ePosta = ePosta;
    this.parola = parola;
  }
}

String ePostas = "ates";
String passwd = "123";

List<Kullanici> kayitliKullanici = [Kullanici(ePostas, passwd)];
