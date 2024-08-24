import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/color/app_color.dart';
import 'package:flutter2_5/core/constant/font/font_size.dart';
import 'package:flutter2_5/core/data/model/credit_card_model.dart';

Widget creditCard(CreditCardModel creditCart) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      width: 100,
      height: 60,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(creditCart.image),
        ),
      ),
      child: Text(
        creditCart.number,
        style: const TextStyle(
          fontSize: FontSize.font16,
          color: AppColor.white,
        ),
      ),
    ),
  );
}
