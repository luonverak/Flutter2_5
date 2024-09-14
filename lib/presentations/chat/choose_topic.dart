import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/color/app_color.dart';
import 'package:flutter2_5/core/constant/font/font_size.dart';
import 'package:flutter2_5/core/constant/radius/app_radius.dart';
import 'package:flutter2_5/core/package/conform_message.dart';
import 'package:flutter2_5/presentations/chat/landing_screen.dart';
import 'package:flutter2_5/presentations/chat/widget/topic.dart';

class ChooseTopic extends StatefulWidget {
  const ChooseTopic({super.key});

  @override
  State<ChooseTopic> createState() => _ChooseTopicState();
}

class _ChooseTopicState extends State<ChooseTopic> {
  bool _status = false;
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        "Choose your favorite topic",
                        style: TextStyle(
                          fontSize: FontSize.font30,
                          fontWeight: AppFontWeights.w600,
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
                    fontWeight: AppFontWeights.w600,
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
                          child: topicWidget(color: AppColor.bgGray),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Topic of interest",
                  style: TextStyle(
                    fontSize: FontSize.font20,
                    fontWeight: AppFontWeights.w600,
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  childAspectRatio: 1.4,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (_status) {
                              _status = false;
                            } else {
                              _status = true;
                            }
                          });
                        },
                        child: topicWidget(
                            color: _status ? Colors.orange : AppColor.bgGray),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: topicWidget(color: AppColor.bgGray),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: topicWidget(color: AppColor.bgGray),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: topicWidget(color: AppColor.bgGray),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: topicWidget(color: AppColor.bgGray),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: topicWidget(color: AppColor.bgGray),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LandingScreen(),
              )),
          child: Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Get Start",
              style: TextStyle(
                fontSize: FontSize.font20,
                color: AppColor.white,
                fontWeight: AppFontWeights.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
