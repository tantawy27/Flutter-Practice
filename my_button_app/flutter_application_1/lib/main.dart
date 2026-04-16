import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: myHomeScreen(),) ;

  }
}




class myHomeScreen extends StatelessWidget {
  const myHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text("Songs App")
        ),
        body: MySongsList(),


    );
  }
}






class MySongsList extends StatefulWidget {
  const MySongsList({super.key});

  @override
  State<MySongsList> createState() => _MySongsListState();
}

class _MySongsListState extends State<MySongsList> {
  String Songtxt="Welcome to my songs app";


FirstSong(){
  setState(() {
    Songtxt="do u wanna first lryics?";
  });
}



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
      child:Column(children: [


        Text(Songtxt,style: TextStyle(fontSize: 20),),

        ElevatedButton(onPressed: (){FirstSong();}, 
        child: Text("First Song"),
        style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 8, 192, 234),foregroundColor: Colors.pink),


        )
      ],
      
      )
       ,

      ),
    );
  }
}