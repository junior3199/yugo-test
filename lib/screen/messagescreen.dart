import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/construction.png"),
            Text(
              "Under Maintenance",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}