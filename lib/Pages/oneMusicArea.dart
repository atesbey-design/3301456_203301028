import 'package:flutter/material.dart';
import 'package:spotifycode/Pages/musicInfo.dart';
import 'dart:math' as math;

class oneMusic extends StatefulWidget {
  int Data = 0;

  oneMusic(int Data) {
    this.Data = Data;
  }

  @override
  State<oneMusic> createState() => _oneMusicState(Data);
}

class _oneMusicState extends State<oneMusic> {
  int data = 0;
  _oneMusicState(int data) {
    this.data = data;
  }
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 0.0),
          colors: <Color>[
            Color.fromARGB(255, 1, 0, 26),
            Color.fromARGB(255, 1, 0, 26),
          ], // red to yellow
          tileMode: TileMode.repeated,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * .7,
            color: Colors.transparent,
            child: Center(
              child: Column(children: [
                Center(
                  child: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: CircleAvatar(
                        radius: 150.0,
                        backgroundImage: AssetImage(musicdatas[data].path),
                        backgroundColor: Colors.transparent,
                      )),
                ),
                //bu kısımda verilen yapıda düzeltme olacak
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Text(
                        musicdatas[data].sarkiciIsmi.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          musicdatas[data].muzikAdi.toUpperCase(),
                          style: TextStyle(
                            color: Color.fromARGB(167, 255, 254, 254),
                            fontSize: 20,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height * .12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_left,
                              color: Colors.white,
                              size: screenSize.width * .12,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.pause,
                              color: Colors.white,
                              size: screenSize.width * .12,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: screenSize.width * .12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
