import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/color/app_color.dart';
import 'package:flutter2_5/presentations/chat/chat_screen.dart';
import 'package:flutter2_5/presentations/chat/home_screen.dart';
import 'package:flutter2_5/presentations/chat/nofication_screen.dart';
import 'package:flutter2_5/presentations/chat/profile_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int indexScreen = 0;
  final List listScreen = const [
    HomeScreen(),
    ChatScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen.elementAt(indexScreen),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppColor.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: AppColor.black,
              ),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: AppColor.black,
              ),
              label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: AppColor.black,
              ),
              label: "Profile"),
        ],
        currentIndex: indexScreen,
        selectedItemColor: AppColor.black,
        onTap: (value) {
          setState(() {
            indexScreen = value;
          });
        },
      ),
    );
  }
}
