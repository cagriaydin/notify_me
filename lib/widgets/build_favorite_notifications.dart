import 'package:flutter/material.dart';
import 'package:notify_me/models/notify_card_model.dart';
import 'package:notify_me/widgets/notification_cards/favorite_notification_card.dart';

class BuildFavoriteNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Favorilerim',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  //TODO: add these values dynamic
                  Text(
                    '23 noti',
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery
              .of(context)
              .size
              .height / 3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: notifyListJson.length,
            itemBuilder: (context, index) {
              return FavoriteNotificationCard(
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 1.3,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 3,
                notificationModel: NotificationModel.fromJson(
                  notifyListJson.elementAt(index),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
