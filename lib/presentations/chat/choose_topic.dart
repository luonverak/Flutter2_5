import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/color/app_color.dart';
import 'package:flutter2_5/core/constant/font/font_size.dart';
import 'package:flutter2_5/core/constant/radius/app_radius.dart';
import 'package:flutter2_5/core/package/conform_message.dart';

class ChooseTopic extends StatelessWidget {
  const ChooseTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgScreenGray,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius:
                            BorderRadius.circular(AppRadius.borderRadius10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            color: AppColor.buttonShadow,
                          )
                        ],
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        "Choose your favorite topic",
                        style: TextStyle(
                          fontSize: FontSize.font30,
                          fontWeight: FontWeights.w600,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  "Language to learn",
                  style: TextStyle(
                    fontSize: FontSize.font20,
                    fontWeight: FontWeights.w600,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColor.bgGray,
                    borderRadius:
                        BorderRadius.circular(AppRadius.borderRadius10),
                  ),
                  child: const TextField(
                    style: TextStyle(
                      fontSize: FontSize.font20,
                      color: AppColor.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: AppColor.black,
                      ),
                      hintStyle: TextStyle(color: AppColor.black),
                      hintText: "Search language",
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(3, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10, top: 25),
                        child: GestureDetector(
                          onLongPress: () {
                            comfirmMessage(
                              context: context,
                              title: "Do you want to delte it?",
                              cancel: () {
                                Navigator.pop(context);
                              },
                              accept: () {},
                            );
                          },
                          child: Container(
                            height: 70,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColor.bgGray,
                              borderRadius: BorderRadius.circular(
                                  AppRadius.borderRadius10),
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
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
