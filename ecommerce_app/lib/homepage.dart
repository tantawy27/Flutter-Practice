import 'package:flutter/material.dart';



class Homepage extends StatefulWidget {
const Homepage({super.key});
@override
State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
@override
Widget build (BuildContext context) {
return Scaffold(
  body: Container(
  padding: EdgeInsets.symmetric (horizontal: 20, vertical: 20),
  child: ListView(children: [
    Row(children: [
      Expanded(child: TextFormField(
        
        decoration: InputDecoration(
          hintText:("Search"),
          contentPadding: EdgeInsets.only(top:13),   //to make hinttext parllel to search icon
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          fillColor:Color.fromARGB(255, 243, 243, 243),
          filled: true,

        ),
      )),
      Padding(
        padding: EdgeInsets.only(left: 10),
      child: Icon(Icons.menu,size: 45,))
    ],),
    Container(height: 40),
    Text("Categories",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20)),
    Container(height: 25),

   

        
    
    







    
    ],),



),

);
}
}