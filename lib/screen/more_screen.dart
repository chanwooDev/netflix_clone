import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/bbongflix_logo.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'ChanWoo',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: 140,
              height: 5,
              color: Colors.red,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Linkify(
                text: 'https://github.com/chanwooDev',
                onOpen: (link) async {
                  if (await canLaunch(link.url)) {
                    await launch(link.url);
                  }
                },
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                linkStyle: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit),
                    SizedBox(width: 10),
                    Text('프로필 수정하기'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
