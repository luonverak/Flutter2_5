import 'package:flutter/material.dart';
import 'package:flutter2_5/core/constant/font/font_size.dart';
import 'package:flutter2_5/core/data/model/recent_activity_model.dart';

Widget recentActivity(RecentActivityModel activityModel) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(activityModel.image),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                activityModel.title,
                style: const TextStyle(
                    fontSize: FontSize.font16, fontWeight: FontWeights.w600),
              ),
              Text(
                activityModel.date,
                style: const TextStyle(fontSize: FontSize.font14),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                activityModel.amount,
                style: const TextStyle(
                    fontSize: FontSize.font16, fontWeight: FontWeights.w600),
              ),
              Text(
                activityModel.status,
                style: const TextStyle(fontSize: FontSize.font14),
              ),
            ],
          ),
          const SizedBox(width: 5)
        ],
      ),
    ),
  );
}
