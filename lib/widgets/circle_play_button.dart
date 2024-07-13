import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CirclePlayButton extends StatelessWidget {
  const CirclePlayButton({
    super.key,
    required this.isPlaying,
    required this.audioPlayer,
  });

  final bool isPlaying;
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kCircleBoxDecoration,
      child: Center(
        child: IconButton(
          icon: isPlaying ? kPlayIcon : kPauseIcon,
          onPressed: isPlaying ? audioPlayer.pause : audioPlayer.resume,
        ),
      ),
    );
  }
}
