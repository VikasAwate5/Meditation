import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/circle_play_button.dart';
import '../widgets/rectangle_button.dart';

class SongBoard extends StatefulWidget {
  const SongBoard({
    super.key,
    required this.musicName,
    required this.musicSource,
    required this.imageSource,
  });

  final String musicName;
  final String musicSource;
  final String imageSource;

  @override
  State<SongBoard> createState() => _SongBoardState();
}

class _SongBoardState extends State<SongBoard> {
  final AudioPlayer audioPlayer = AudioPlayer();
  late final String musicName;
  late final String musicSource;
  late final String imageSource;
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    _updateUI();
    _setAudio();

    /// listen to state playing, paused, stop
    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() => isPlaying = event == PlayerState.playing);
    });

    /// Listen to duration position
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() => duration = newDuration);
    });

    /// listen to audion position
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() => position = newPosition);
    });
  }

  void _updateUI() {
    musicName = widget.musicName;
    musicSource = widget.musicSource;
    imageSource = widget.imageSource;
    return;
  }

  Future<void> _setAudio() async {
    AssetSource source = AssetSource('musics/$musicSource');
    await audioPlayer.play(source);

    /// repeat the music
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    audioPlayer.setSource(source);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/$imageSource',
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(musicName, style: kLargeTextStyle),
                Slider(
                  min: 0,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  activeColor: Colors.deepPurple,
                  inactiveColor: Colors.deepPurple[200],
                  onChanged: (value) async {
                    final position = Duration(seconds: value.toInt());
                    await audioPlayer.seek(position);
                    await audioPlayer.resume();
                  },
                ),
                CirclePlayButton(
                  isPlaying: isPlaying,
                  audioPlayer: audioPlayer,
                ),
                const SizedBox(height: 120),
                RectangleButton(
                  onPressed: () async {
                    await audioPlayer.stop();
                    if (context.mounted) Navigator.pop(context);
                  },
                  child: const Text('GO TO DASHBOARD', style: kButtonTextStyle),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
