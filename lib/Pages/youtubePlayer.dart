import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayer extends StatefulWidget {
  final String? url;

  YoutubePlayer(this.url);

  @override
  State<YoutubePlayer> createState() => _YoutubePlayerState();
}

class _YoutubePlayerState extends State<YoutubePlayer> {
  late YoutubePlayerController _controller;
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayerController.convertUrlToId(widget.url!)!,
        params: const YoutubePlayerParams(
          loop: true,
          color: "red",
          desktopMode: true,
          strictRelatedVideos: true,
          showFullscreenButton: !kIsWeb,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return SizedBox(
      height: kIsWeb ? screen.height / 1.13 : screen.height,
      width: screen.width,
      child: YoutubePlayerControllerProvider(
        controller: _controller,
        child: YoutubePlayerIFrame(
          controller: _controller,
        ),
      ),
    );
  }
}
