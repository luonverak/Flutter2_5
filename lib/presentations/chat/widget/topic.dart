import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/font/font_size.dart';
import 'package:flutter2_5/core/constant/radius/app_radius.dart';

Widget topicWidget({required var color}) {
  return Container(
    height: 70,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(AppRadius.borderRadius10),
    ),
    child: const Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Text(
        "Dart & Flutter",
        style: TextStyle(
          fontSize: FontSize.font18,
        ),
      ),
    ),
  );
}
