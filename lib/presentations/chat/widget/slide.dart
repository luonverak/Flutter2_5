import 'package:flutter/material.dart';
import 'package:flutter2_5/core/data/model/slide_model.dart';

List<Widget> listSlideScreen = [
  Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(listSlide[0].image),
      ),
    ),
  ),
  Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(listSlide[1].image),
      ),
    ),
  ),
  Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(listSlide[2].image),
      ),
    ),
  )
];
