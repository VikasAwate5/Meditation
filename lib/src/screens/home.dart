import 'package:flutter/material.dart';
import 'package:meditation_app/src/utils/dimens_constant.dart';
import 'package:meditation_app/src/widgets/rectangle_button.dart';

import '../utils/utils.dart';
import 'dashboard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(DimensConstant.dimens15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/meditation.png"),
              const Text(
                "Time to meditate",
                style: largeTextStyle,
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.only(top: DimensConstant.dimens50),
                child: Text(
                  "Take a breath,\nand ease your mind",
                  style: mediumTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: DimensConstant.dimens50),
              RectangleButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Dashboard()),
                ),
                child: const Text(
                  "Let's get started",
                  style: buttonTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
