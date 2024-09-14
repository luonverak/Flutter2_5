import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/color/app_color.dart';
import 'package:flutter2_5/core/constant/font/font_size.dart';
import 'package:flutter2_5/core/constant/radius/app_radius.dart';
import 'package:lottie/lottie.dart';

Future<void> comfirmMessage(
    {required BuildContext context,
    required String title,
    required void Function() cancel,
    required void Function() accept}) {
  return showDialog(
    context: context,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.sizeOf(context).height / 3.5,
          bottom: MediaQuery.sizeOf(context).height / 3.5,
          left: 20,
          right: 20,
        ),
        child: Dialog.fullscreen(
          backgroundColor: Colors.transparent,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(AppRadius.borderRadius10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: LottieBuilder.asset("asset/icon/alert.json"),
                  ),
                  Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: AppFontWeights.w500,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        height: 55,
                        color: AppColor.buttonRed,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: cancel,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: FontSize.font20,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ),
                      MaterialButton(
                        height: 60,
                        color: AppColor.buttonBlue,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: accept,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "Yes,delete it",
                            style: TextStyle(
                              fontSize: FontSize.font20,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
