import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/font/font_size.dart';
import 'package:flutter2_5/core/constant/radius/app_radius.dart';

Widget optionsBotton({
  required var color,
  required String label,
  required var textColor,
  required IconData icon,
  required var iconColor,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppRadius.borderRadius30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          Text(
            label,
            style: TextStyle(fontSize: FontSize.font18, color: textColor),
          ),
        ],
      ),
    ),
  );
}
