import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShareIcon extends StatelessWidget {
  final String url;
  final String imageUrl;

  const ShareIcon({Key key, this.url, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launch(url);
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
