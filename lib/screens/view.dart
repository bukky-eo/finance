import 'package:flutter/material.dart';

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1F1F),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 35, left: 35, right: 35, bottom: 25),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
