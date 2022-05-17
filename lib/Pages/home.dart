import 'package:flutter/material.dart';
import 'package:spotifycode/Pages/catagorylist.dart';
import 'package:spotifycode/Pages/musicInfo.dart';
import 'package:spotifycode/Pages/oneMusicArea.dart';
import 'package:spotifycode/Pages/youtubePlayer.dart';

class homePageBuild extends StatefulWidget {
  homePageBuild({Key? key}) : super(key: key);

  @override
  State<homePageBuild> createState() => _homePageBuildState();
}

class _homePageBuildState extends State<homePageBuild> {
  @override
  Widget build(BuildContext context) {
    return homePages();
  }
}

class homePages extends StatefulWidget {
  homePages({Key? key}) : super(key: key);

  @override
  State<homePages> createState() => _homePagesState();
}

List<musicCategory> musiccategory = [
  musicCategory("Slow",
      "https://englishlive.ef.com/blog/wp-content/uploads/sites/2/2015/05/music-genres.jpg"),
  musicCategory("Slow",
      "https://englishlive.ef.com/blog/wp-content/uploads/sites/2/2015/05/music-genres.jpg"),
  musicCategory("Slow",
      "https://englishlive.ef.com/blog/wp-content/uploads/sites/2/2015/05/music-genres.jpg"),
  musicCategory("Slow",
      "https://englishlive.ef.com/blog/wp-content/uploads/sites/2/2015/05/music-genres.jpg"),
  musicCategory("Slow",
      "https://englishlive.ef.com/blog/wp-content/uploads/sites/2/2015/05/music-genres.jpg"),
  musicCategory("Slow",
      "https://englishlive.ef.com/blog/wp-content/uploads/sites/2/2015/05/music-genres.jpg"),
];

class _homePagesState extends State<homePages> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      color: Color.fromARGB(255, 1, 0, 26),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
          child: Column(
            children: <Widget>[
              Title(
                  color: Colors.white,
                  child: Text("KATEGORİLER",
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.transparent,
                          decoration: TextDecoration.none,
                          fontSize: screenSize.width < 400 ? 20 : 40))),
              Container(
                color: Colors.transparent,
                width: screenSize.width,
                height: screenSize.height * .4,
                child: ListView.builder(
                  padding: EdgeInsets.only(right: 0, left: 0),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: musiccategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => catagoryArea()));
                      },
                      child: Card(
                        color: Colors.transparent,
                        child: Container(
                          //bu kısıma ayar ver respons olmuyor

                          width: screenSize.width * .55,
                          height: screenSize.height * .35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/elements/categoryimage$index.jpg"),
                                fit: BoxFit.fill,
                                alignment: Alignment.center,
                              ),
                              color: Colors.transparent),
                          // child: Text("YOUR TEXT"),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: screenSize.width,
                child: Center(
                  child: Text(
                    'En Çok Dinlenilenler',
                    style: TextStyle(
                      fontSize: 25,
                      decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 192, 179, 179),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              //BURAYA GELECEK

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height * .4,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: musicdatas.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Card(
                            color: Color.fromARGB(0, 0, 0, 0).withOpacity(0.2),
                            key: UniqueKey(),
                            child: Padding(
                                padding: const EdgeInsets.only(bottom: 1),
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => YoutubePlayer(
                                                musicdatas[index].url)));
                                  },
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            "assets/elements/categoryimage$index.jpg"),
                                        fit: BoxFit.fill,
                                        width: 70,
                                        height: 70,
                                      ),
                                      SizedBox(width: 20),
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) => YoutubePlayer(
                                                      musicdatas[index].url)));
                                        },
                                        child: Text(
                                            musicdatas[index].muzikAdi +
                                                "\n \n" +
                                                musicdatas[index].sarkiciIsmi,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
