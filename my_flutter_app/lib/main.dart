import 'package:flutter/material.dart';
import 'package:my_flutter_app/Image_assets.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("Egypt Devs"),),
        body: MyImageAsset(),








    ));
  }
}