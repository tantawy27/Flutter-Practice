import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
  
}




class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   return MaterialApp(


    home:Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 179, 51),
      appBar: AppBar(
          title: Text("Hello Ya pro",style:TextStyle(fontSize: 30,fontStyle: FontStyle.italic),),
          backgroundColor: const Color.fromARGB(255, 12, 230, 254),
          
      ),


      body:Container(

        
        child:
         Row(children: [


          Expanded(
            
            child: 
          Container(
          padding: EdgeInsets.all(12),
          child: FlutterLogo(size: 80),
          decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color:Color.fromARGB(238, 197, 34, 173),
                  border: Border.all(color: const Color.fromARGB(253, 255, 255, 255),width: 5),
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10)
                  ] 
        )
        ),
),



            Expanded(child: 
          Container(
          padding: EdgeInsets.all(12),
          child: FlutterLogo(size: 80),
          decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color:Color.fromARGB(238, 197, 34, 173),
                  border: Border.all(color: const Color.fromARGB(253, 255, 255, 255),width: 5),
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10)
                  ] 
        )
        ),
),


          Container(
          padding: EdgeInsets.all(12),
          child: FlutterLogo(size: 80),
          decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color:Color.fromARGB(238, 197, 34, 173),
                  border: Border.all(color: const Color.fromARGB(253, 255, 255, 255),width: 5),
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10)
                  ] 
        )
        ),



        Expanded(child: 

                  Container(
          padding: EdgeInsets.all(12),
          child: FlutterLogo(size: 80),
          decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color:Color.fromARGB(238, 197, 34, 173),
                  border: Border.all(color: const Color.fromARGB(253, 255, 255, 255),width: 5),
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 10)
                  ] 
        )
        ),

        
         )
         ],)
      ),







    floatingActionButton: FloatingActionButton(
      onPressed: (){debugPrint("Hi,YaaAaad XD");},
      child:Icon(Icons.ac_unit_sharp,color: Colors.redAccent,) ,
    ),
      ),
   );
  
  }

}


