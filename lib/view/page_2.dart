import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  PageTwo({super.key,});

  String bodyTitle = 'Page 2';

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