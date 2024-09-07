import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/color/app_color.dart';
import 'package:flutter2_5/core/data/model/line_current_page.dart';
import 'package:flutter2_5/presentations/chat/choose_topic.dart';
import 'package:flutter2_5/presentations/chat/widget/slide.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  void initState() {
    if (_currentPage == 0) {
      listLineCurrentPage[0].width = 60;
      listLineCurrentPage[_currentPage].color = Colors.amber;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: PageView(
        onPageChanged: (value) {
          _currentPage = value;
          setState(() {
            for (var element in listLineCurrentPage) {
              element.width = 40;
              element.color = Colors.grey;
            }
            listLineCurrentPage[_currentPage].width = 70;
            listLineCurrentPage[_currentPage].color = Colors.amber;
          });
        },
        controller: _pageController,
        children: listSlideScreen,
      ),
      floatingActionButton: Row(
        children: [
          const SizedBox(width: 20),
          SingleChildScrollView(
              child: Row(
            children: List.generate(
              listLineCurrentPage.length,
              (index) => currentPage(
                lineCurrentPage: listLineCurrentPage[index],
              ),
            ),
          )),
          const Spacer(),
          FloatingActionButton(
            backgroundColor: AppColor.blue,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChooseTopic(),
                  ));
            },
            child: const Icon(
              Icons.arrow_forward,
              color: AppColor.white,
            ),
          ),
        ],
      ),
    );
  }
}

Widget currentPage({required LineCurrentPage lineCurrentPage}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5),
    child: Container(
      width: lineCurrentPage.width,
      height: 10,
      decoration: BoxDecoration(
        color: lineCurrentPage.color,
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
