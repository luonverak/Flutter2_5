import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter2_5/core/constant/color/app_color.dart';
import 'package:flutter2_5/core/constant/font/font_size.dart';

class TrackSpendingHomeScreen extends StatefulWidget {
  const TrackSpendingHomeScreen({super.key});

  @override
  State<TrackSpendingHomeScreen> createState() =>
      _TrackSpendingHomeScreenState();
}

class _TrackSpendingHomeScreenState extends State<TrackSpendingHomeScreen> {
  bool balance = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            title: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "Hi, Verak",
                style: TextStyle(
                  fontSize: FontSize.font20,
                  fontWeight: FontWeights.w600,
                ),
              ),
              subtitle: Text(
                "Welcome back!",
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: badges.Badge(
                  badgeContent: Text(
                    '3',
                    style: TextStyle(color: AppColor.white),
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Wallet balance"),
                  Row(
                    children: [
                      balance == false
                          ? Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          : Visibility(
                              visible: balance,
                              child: const Text(
                                "\$ 120000",
                                style: TextStyle(
                                  fontSize: FontSize.font45,
                                ),
                              ),
                            ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            balance ? balance = false : balance = true;
                          });
                        },
                        icon: Icon(
                            balance ? Icons.visibility_off : Icons.visibility),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Text(
                        "Cart",
                        style: TextStyle(fontSize: FontSize.font18),
                      ),
                      const SizedBox(width: 30),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColor.greenBackground,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.oldGreen,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
