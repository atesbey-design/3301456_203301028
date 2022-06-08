import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotifycode/Pages/catagorylist.dart';
import 'package:spotifycode/Pages/home.dart';
import 'package:spotifycode/Pages/search.dart';
import 'package:spotifycode/Pages/setting.dart';
import 'package:spotifycode/chartModel.dart';

import 'package:spotifycode/createAccount.dart';

import 'package:spotifycode/usersArea/login.dart';
import 'package:spotifycode/usersArea/providerMainImgUrl.dart';
import 'HomePage.dart';
import 'dart:async';
import 'package:flutter/material.dart';

import 'model/apiServices/postmodel.dart';

/*
Firebase Bağlantısıı


*/
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Provider<mainImgUrl>(
      create: (BuildContext context) {
        return mainImgUrl();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: GirisAlani(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => GirisAlani())));
  }

  @override
  Widget build(BuildContext context) {
    String url = Provider.of<mainImgUrl>(context).url;
    return Container(
        color: Color.fromARGB(255, 1, 0, 26),
        child: Image(image: AssetImage("$url")));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Text(
        "Home page",
        textScaleFactor: 2,
      )),
    );
  }
}
