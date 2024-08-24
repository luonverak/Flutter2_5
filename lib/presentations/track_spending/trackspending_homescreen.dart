import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter2_5/core/constant/color/app_color.dart';
import 'package:flutter2_5/core/constant/font/font_size.dart';
import 'package:flutter2_5/core/constant/radius/app_radius.dart';
import 'package:flutter2_5/core/data/model/credit_card_model.dart';
import 'package:flutter2_5/core/data/model/recent_activity_model.dart';
import 'package:flutter2_5/presentations/track_spending/widget/credit_cart.dart';
import 'package:flutter2_5/presentations/track_spending/widget/option_botton.dart';
import 'package:flutter2_5/presentations/track_spending/widget/recent_activity.dart';

class TrackSpendingHomeScreen extends StatefulWidget {
  const TrackSpendingHomeScreen({super.key});

  @override
  State<TrackSpendingHomeScreen> createState() =>
      _TrackSpendingHomeScreenState();
}

class _TrackSpendingHomeScreenState extends State<TrackSpendingHomeScreen> {
  bool balance = false;
  int _indexCard = 1;
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
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Wallet balance",
                    style: TextStyle(
                        fontSize: FontSize.font18, color: AppColor.black),
                  ),
                  Row(
                    children: [
                      balance == false
                          ? Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(
                                    AppRadius.borderRadius10),
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
                        "Cards",
                        style: TextStyle(fontSize: FontSize.font18),
                      ),
                      const SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          if (_indexCard == listCreditCard.length) {
                            return;
                          }
                          setState(() {
                            _indexCard += 1;
                          });
                        },
                        child: CircleAvatar(
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
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              _indexCard,
                              (index) => creditCard(listCreditCard[index]),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: optionsBotton(
                          color: AppColor.oldGreen,
                          label: "Send",
                          textColor: AppColor.green,
                          icon: Icons.send_to_mobile,
                          iconColor: AppColor.green,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: optionsBotton(
                          color: AppColor.green,
                          label: "Request",
                          textColor: AppColor.oldGreen,
                          icon: Icons.arrow_downward,
                          iconColor: AppColor.oldGreen,
                        ),
                      ),
                      Expanded(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColor.greenBackground,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("asset/image/categories.png"),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Recent Activity",
                    style: TextStyle(
                        fontSize: FontSize.font18,
                        fontWeight: FontWeights.w600),
                  ),
                  Spacer(),
                  Text(
                    "See More",
                    style: TextStyle(fontSize: FontSize.font18),
                  ),
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemCount: listRecentActivity.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: recentActivity(listRecentActivity[index]),
            ),
          )
        ],
      ),
    );
  }
}
