import 'package:flutter/material.dart';


class PageOne extends StatelessWidget {
  PageOne({super.key,});

  String bodyTitle = 'Page 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(bodyTitle,
            style: TextStyle(fontSize: 25),
          )
      ),
    );
  }
}