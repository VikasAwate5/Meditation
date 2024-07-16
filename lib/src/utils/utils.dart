import 'package:flutter/material.dart';
import 'package:meditation_app/src/utils/colors_constant.dart';
import 'package:meditation_app/src/utils/dimens_constant.dart';

const TextStyle largeTextStyle = TextStyle(
  fontSize: DimensConstant.dimens30,
  fontWeight: FontWeight.w600,
  color: ColorsConstant.deepPurple,
  letterSpacing: DimensConstant.dimens2,
);

const TextStyle mediumTextStyle = TextStyle(
  fontSize: DimensConstant.dimens24,
  fontWeight: FontWeight.w500,
  letterSpacing: DimensConstant.dimens2,
  color: ColorsConstant.grey,
);

const TextStyle buttonTextStyle = TextStyle(
  fontSize: DimensConstant.dimens20,
  fontWeight: FontWeight.w500,
  letterSpacing: DimensConstant.dimens2,
  color: ColorsConstant.white,
);

const Icon playIcon = Icon(
  Icons.pause,
  color: ColorsConstant.white,
  size: DimensConstant.dimens50,
);

const Icon pauseIcon = Icon(
  Icons.play_arrow,
  color: ColorsConstant.white,
  size: DimensConstant.dimens50,
);

BoxDecoration circleBoxDecoration = const BoxDecoration(
  color: ColorsConstant.deepPurple,
  shape: BoxShape.circle,
);
