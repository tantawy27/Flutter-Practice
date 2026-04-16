import 'package:flutter/material.dart';

class MyImageAsset extends StatelessWidget {
  const MyImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child : Center(
        child:Column(
          children: [Container(
            child: Image.asset("assets/images/Egypt.png"),
          )

          ],
        )
      )
    );
  }
}