import 'package:flutter/material.dart';
import 'package:spotifycode/HomePage.dart';
import 'package:spotifycode/Pages/report.dart';
import 'package:spotifycode/main.dart';

class settingPage extends StatefulWidget {
  const settingPage({Key? key}) : super(key: key);

  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: fullSizeBackground(),
    );
  }
}

class fullSizeBackground extends StatefulWidget {
  fullSizeBackground({Key? key}) : super(key: key);

  @override
  State<fullSizeBackground> createState() => _fullSizeBackgroundState();
}

class _fullSizeBackgroundState extends State<fullSizeBackground> {
  bool koyuTema = false;
  bool bildirim = false;
  bool cevrimDisiMod = false;
  bool otomatikCal = false;
  bool odemeiptal = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Color.fromARGB(255, 1, 0, 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 1, 0, 26),
                          border: Border(
                            bottom: BorderSide(
                                width: 4.0,
                                color: Color.fromARGB(255, 42, 0, 127)),
                          ),
                        ),
                        width: screenSize.width,
                        height: screenSize.height * .1,
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.transparent,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/profil.jpg'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, left: 40),
                      child: Text(
                        "ATEŞ POTİFY AYARLARI",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Respons yapıya sahip değil üzerinde uğraş
            Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 6, right: 6, bottom: 6),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
                  width: screenSize.width,
                  height: screenSize.height * .1,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "KARANLIK TEMA ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: "Raleway"),
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * .32,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Switch(
                          value: koyuTema,
                          onChanged: (value) {
                            setState(() {
                              koyuTema = value;
                            });
                          },
                          activeTrackColor: Color.fromARGB(255, 3, 255, 3),
                          activeColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
                  width: screenSize.width,
                  height: screenSize.height * .1,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          " ANLIK BİLDİRİM ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: "Raleway"),
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * .32,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Switch(
                          value: bildirim,
                          onChanged: (value) {
                            setState(() {
                              bildirim = value;
                            });
                          },
                          activeTrackColor: Color.fromARGB(255, 3, 255, 3),
                          activeColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
                  width: screenSize.width,
                  height: screenSize.height * .1,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "ÇEVRİMDIŞI ÇAL ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: "Raleway"),
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * .32,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Switch(
                          value: cevrimDisiMod,
                          onChanged: (value) {
                            setState(() {
                              cevrimDisiMod = value;
                            });
                          },
                          activeTrackColor: Color.fromARGB(255, 3, 255, 3),
                          activeColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                )),

            Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
                  width: screenSize.width,
                  height: screenSize.height * .1,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "OTOMATİK ÇAL ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: "Raleway"),
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * .344,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Switch(
                          value: otomatikCal,
                          onChanged: (value) {
                            setState(() {
                              otomatikCal = value;
                            });
                          },
                          activeTrackColor: Color.fromARGB(255, 3, 255, 3),
                          activeColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
                  width: screenSize.width,
                  height: screenSize.height * .1,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "ÖDEMEYİ  İPTAL ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: "Raleway"),
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * .344,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Switch(
                          value: odemeiptal,
                          onChanged: (value) {
                            setState(() {
                             
                              _showMyDialog(context);
                              odemeiptal = false;
                            });
                          },
                          activeTrackColor: Color.fromARGB(255, 3, 255, 3),
                          activeColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                )),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: MaterialButton(
                  disabledColor: Colors.black,
                  hoverColor: Colors.black,
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 46, 106, 255).withOpacity(0.7),
                    ),
                    width: screenSize.width * .4,
                    height: screenSize.height * .07,
                    child: Center(
                        child: Text(
                      "Çıkış Yap",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.blue,
        title: const Text(
          'İSTENİLEN SAYFAYA ULAŞILAMIYOR',
          style: TextStyle(color: Colors.white),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text(
                'Yanlış bir durum olduğunu düşünüyorsanız bize bildirin.',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Bildir',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => reportPage()));
            },
          ),
        ],
      );
    },
  );
}
