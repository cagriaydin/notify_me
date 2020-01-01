import 'package:flutter/material.dart';
import 'package:notify_me/models/notification_model.dart';
import 'package:notify_me/widgets/notification_cards/notification_card.dart';

class BuildNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: notifyListJson.length,
          itemBuilder: (BuildContext context, int index) {
            return NotificationCard(
              notificationModel: NotificationModel.fromJson(
                notifyListJson.elementAt(index),
              ),
            );
          },
        ),
      ),
    );
  }
}