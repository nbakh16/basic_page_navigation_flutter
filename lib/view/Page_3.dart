import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  PageThree({super.key,});

  String bodyTitle = 'Page 3';

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