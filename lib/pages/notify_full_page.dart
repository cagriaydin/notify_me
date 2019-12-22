import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:notify_me/models/notify_card_model.dart';
import 'package:notify_me/pages/notify_detail_page.dart';
import 'package:notify_me/widgets/notify_favorite_card.dart';

class NotifyFullPage extends StatelessWidget {
  final NotifyCardModel notifyCardModel;

  const NotifyFullPage({Key key, this.notifyCardModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientBeginColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return NotifyDetailPage();
                  }));
                },
                child: CachedNetworkImage(
                  imageUrl: notifyCardModel.backgroundImageUrl,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        width: 48,
                        height: 48,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(notifyCardModel.profileImageUrl),
                        ),
                      ),
                      IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          notifyCardModel.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '~' + notifyCardModel.subTitle,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          notifyCardModel.time,
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 64,
                          height: 64,
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(notifyCardModel.profileImageUrl),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          notifyCardModel.name,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  notifyCardModel.description,
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_border),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.refresh),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*

Align(
alignment: Alignment.bottomCenter,
child: Container(
height: 50,
width: double.infinity,
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.bottomCenter,
end: Alignment.topCenter,
colors: <Color>[
gradientBeginColor,
gradientBeginColor,
Colors.transparent
],
),
),
child: Text('asdasdasdasdasd'),
),
)*/
