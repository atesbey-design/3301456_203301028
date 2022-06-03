import 'dart:math';

import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:spotifycode/model/apiServices/post.dart';
import 'package:spotifycode/model/apiServices/post_services.dart';

class postModel extends StatefulWidget {
  postModel({Key? key}) : super(key: key);

  @override
  State<postModel> createState() => _postModelState();
}

class _postModelState extends State<postModel> {
  List<Post>? posts;
  var isLoaded = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  getdata() async {
    posts = await postServices().getPosts();

    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
    print(posts?.length);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 0, 26),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (context, index) {
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
                    title: Text(
                      posts![index].name,
                      maxLines: 1,
                    ),
                    subtitle: Text(
                      "${posts![index].body}",
                      maxLines: 1,
                    ),
                    hoverColor: Colors.red,
                  ),
                ),
              ),
            );
          },
        ),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Müzik Ara',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<Post>(
            onQueryUpdate: (s) => print(s),
            barTheme: ThemeData(
                hintColor: Colors.white,
                textSelectionColor: Colors.white,
                appBarTheme: AppBarTheme(
                  backgroundColor: Color.fromARGB(255, 1, 0, 26),
                )),
            items: posts!,
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
            filter: (Post) => [
              Post.body,
              Post.name,
            ],
            builder: (posts) => ListTile(
              title: Text(posts.name),
              subtitle: Text("${posts.body}"),
            ),
          ),
        ),
        child: Icon(Icons.search),
      ),
    );
  }
}
