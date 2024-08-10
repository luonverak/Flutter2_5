import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/color/app_color.dart';
import 'package:flutter2_5/core/constant/font/font_size.dart';
import 'package:flutter2_5/core/data/model/trackspending_model.dart';

class TrackSpendingStartScreen extends StatelessWidget {
  const TrackSpendingStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.green,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TrackSpending.trackSpendingTitle,
              style: TextStyle(
                color: AppColor.oldGreen,
                fontSize: FontSize.font45,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              TrackSpending.trackSpendingdescription,
              style: TextStyle(
                color: AppColor.oldGreen,
                fontSize: FontSize.font18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColor.oldGreen),
                  ),
                  child: Text(
                    "Get Start",
                    style: TextStyle(
                        color: AppColor.green, fontSize: FontSize.font20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an acount?",
                    style: TextStyle(
                        color: AppColor.oldGreen, fontSize: FontSize.font16),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: AppColor.oldGreen,
                      fontSize: FontSize.font16,
                      fontWeight: FontWeights.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
