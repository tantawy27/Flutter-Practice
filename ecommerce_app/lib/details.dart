import 'package:flutter/material.dart';


class ItemDetails extends StatefulWidget {
  final dataitems;

  const ItemDetails({super.key, this.dataitems});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(centerTitle: true,
        title:
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          Icon(Icons.shop),
          Text("Ecommerce ",style: TextStyle(
          fontWeight: (FontWeight.w500)
        ),),
        Text("App",style: TextStyle(
          fontWeight: (FontWeight.w500),
          color: Colors.amber,
        ),)

        ],) ,
        iconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
        backgroundColor: Colors.grey[200],
      ),
      body: ListView(children: [
        Image.asset(widget.dataitems['image']) //to reach to parent data

        



      ],
      ),











    );
  }
}