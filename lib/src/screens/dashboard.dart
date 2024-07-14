import 'package:flutter/material.dart';
import 'package:meditation_app/src/screens/song_board.dart';
import 'package:meditation_app/src/utils/colors_constant.dart';
import 'package:meditation_app/src/utils/dimens_constant.dart';

import '../utils/assets.dart';
import '../utils/utils.dart';
import '../widgets/meditation_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(DimensConstant.dimens15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                      size: DimensConstant.dimens30,
                      color: ColorsConstant.deepPurple,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                  Text("Hey Buddy!", style: largeTextStyle),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: DimensConstant.dimens30,
                ),
                child: Text(
                  "What's your mood today?",
                  style: mediumTextStyle,
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: DimensConstant.dimens2,
                  mainAxisSpacing: DimensConstant.dimens20,
                  crossAxisSpacing: DimensConstant.dimens30,
                  children: [
                    MeditationCard(
                      title: meditateTitle,
                      description: meditateSubtitle,
                      image: meditateImageSource,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SongBoard(
                              musicName: meditateTitle,
                              imageSource: meditateImageSource,
                              musicSource: meditateMusicSource,
                            ),
                          ),
                        );
                      },
                    ),
                    MeditationCard(
                      title: relaxTitle,
                      description: relaxSubtitle,
                      image: relaxImageSource,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SongBoard(
                              musicName: relaxTitle,
                              imageSource: relaxImageSource,
                              musicSource: relaxMusicSource,
                            ),
                          ),
                        );
                      },
                    ),
                    MeditationCard(
                      title: brainTitle,
                      description: brainSubtitle,
                      image: brainImageSource,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SongBoard(
                              musicName: brainTitle,
                              imageSource: brainImageSource,
                              musicSource: brainMusicSource,
                            ),
                          ),
                        );
                      },
                    ),
                    MeditationCard(
                      title: studyTitle,
                      description: studySubtitle,
                      image: studyImageSource,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const SongBoard(
                              musicName: studyTitle,
                              imageSource: studyImageSource,
                              musicSource: studyMusicSource,
                            ),
                          ),
                        );
                      },
                    ),
                    MeditationCard(
                      title: sleepTitle,
                      description: sleepSubtitle,
                      image: sleepImageSource,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SongBoard(
                              musicName: sleepTitle,
                              imageSource: sleepImageSource,
                              musicSource: sleepMusicSource,
                            ),
                          ),
                        );
                      },
                    ),
                    MeditationCard(
                      title: focusTitle,
                      description: focusSubtitle,
                      image: focusImageSource,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SongBoard(
                              musicName: focusTitle,
                              imageSource: focusImageSource,
                              musicSource: focusMusicSource,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
