import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class youtubePlayer extends StatefulWidget {
  youtubePlayer({Key? key}) : super(key: key);

  @override
  State<youtubePlayer> createState() => _youtubePlayerState();
}

class _youtubePlayerState extends State<youtubePlayer> {
  @override
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: "Oz_yB2aY5wA",
    flags: YoutubePlayerFlags(autoPlay: true, mute: false),
  );

  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      liveUIColor: Colors.amber,
    );
  }
}
