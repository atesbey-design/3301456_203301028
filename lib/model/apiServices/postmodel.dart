import 'dart:math';

import 'package:flutter/material.dart';
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
    return Visibility(
      visible: isLoaded,
      child: ListView.builder(
        itemCount: posts?.length,
        itemBuilder: (context, index) {
          return Container(
            child: Text("${posts![index].title}"),
          );
        },
      ),
      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
