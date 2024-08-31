import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/color/app_color.dart';
import 'package:flutter2_5/core/data/model/line_current_page.dart';

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
        children: listPageView,
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
            backgroundColor: AppColor.purple,
            onPressed: () {
              setState(() {
                if (_currentPage != listPageView.length - 1) {
                  _pageController.jumpToPage(_currentPage + 1);
                } else {
                  _pageController.jumpToPage(0);
                }
              });
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

List<Widget> listPageView = [
  Container(
    color: const Color.fromARGB(255, 7, 255, 247),
  ),
  Container(
    color: Colors.red,
  ),
  Container(
    color: Colors.black,
  )
];
