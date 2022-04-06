import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:spotifycode/Pages/musicInfo.dart';

/// This is a very simple class, used to
/// demo the `SearchPage` package

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Müzik ara',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(child: searchPageBuild()),
    );
  }
}

class searchPageBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      /*
      appBar: AppBar(
        leading: Icon(Icons.music_note_outlined),
        title: Text('Müzik Ara'),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0).withOpacity(.1),
        centerTitle: true,
      ),*/
      body: Container(
        padding: EdgeInsets.only(top: 50),
        width: screenSize.width,
        height: screenSize.height,
        color: Color.fromARGB(255, 1, 0, 26),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: musicdatas.length,
          itemBuilder: (context, index) {
            final musicData musicdata = musicdatas[index];
            return Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 3, bottom: 3),
                child: MaterialButton(
                  color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.3),
                  onPressed: () {},
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    textColor: Colors.white,
                    leading: Image(
                      image: AssetImage(musicdata.path),
                      width: 50,
                      height: 50,
                      fit: BoxFit.fill,
                    ),
                    title: Text(musicdata.sarkiciIsmi),
                    subtitle: Text(musicdata.muzikAdi),
                    hoverColor: Colors.red,
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Müzik Ara',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<musicData>(
            onQueryUpdate: (s) => print(s),
            barTheme: ThemeData(
                hintColor: Colors.white,
                textSelectionColor: Colors.white,
                appBarTheme: AppBarTheme(
                  backgroundColor: Color.fromARGB(255, 1, 0, 26),
                )),
            items: musicdatas,
            searchLabel: 'Müzik Ara',
            searchStyle: TextStyle(color: Colors.red),
            suggestion: Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Color.fromARGB(255, 1, 0, 26),
              child: Center(
                child: Text(
                  'Müzikleri Sanatçı ve müzik adı olarak arat',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            failure: Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Color.fromARGB(255, 1, 0, 26),
              child: Center(
                child: Text(
                  'Bu şarkı bulunamadı.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            filter: (person) => [
              person.sarkiciIsmi,
              person.muzikAdi,
            ],
            builder: (musicdata) => ListTile(
              title: Text(musicdata.sarkiciIsmi),
              subtitle: Text(musicdata.muzikAdi),
            ),
          ),
        ),
        child: Icon(Icons.search),
      ),
    );
  }
}
