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
  child:
   ListView(children: [

    Row(children: [
      Expanded(child: TextFormField(
        decoration: InputDecoration(
          hintText:("Search"),
          contentPadding: EdgeInsets.only(top:13),   //to make hinttext parllel to search icon
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          fillColor: const Color.fromARGB(255, 238, 237, 237),
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

    Container( 
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,

        children: [
          
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color:const Color.fromARGB(255, 238, 237, 237),borderRadius: BorderRadius.circular(120)),
                child:Icon(Icons.laptop,size: 30,),
                padding: EdgeInsets.all(15)),
                Text("Laptops",style: TextStyle(fontWeight:FontWeight.bold,color:Color.fromARGB(255, 92, 92, 92) ),),
            ],
                    ),
          ),
      
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
            children: [
            
            Container(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 238, 237, 237),borderRadius: BorderRadius.circular(100)),
              child:Icon(Icons.phone,size: 30,),
              padding: EdgeInsets.all(15)),
              Text("Mobiles",style: TextStyle(fontWeight:FontWeight.bold,color:Color.fromARGB(255, 92, 92, 92) ),),
            ],
          ) 
          ),
      
        Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
            children: [

              Container(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 238, 237, 237),borderRadius: BorderRadius.circular(120)),
              child:Icon(Icons.electric_bike,size: 30,),
              padding: EdgeInsets.all(15)),
              Text("Bikes",style: TextStyle(fontWeight:FontWeight.bold,color:Color.fromARGB(255, 92, 92, 92) ),),
          ],
    )
    ),
      
      Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
            children: [

              Container(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 238, 237, 237),borderRadius: BorderRadius.circular(120)),
              child:Icon(Icons.card_giftcard,size: 30,),
              padding: EdgeInsets.all(15)),
              Text("Gifts",style: TextStyle(fontWeight:FontWeight.bold,color:Color.fromARGB(255, 92, 92, 92) ),),
          ],
      )
      ),

              Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
            children: [

              Container(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 238, 237, 237),borderRadius: BorderRadius.circular(120)),
              child:Icon(Icons.electric_car_outlined,size: 30,),
              padding: EdgeInsets.all(15)),
              Text("Cars",style: TextStyle(fontWeight:FontWeight.bold,color:Color.fromARGB(255, 92, 92, 92) ),),
          
          ],

        ),

              )
      
      
      ],),
    ),

    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text("Best Selling",
      style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
      ),


      GridView(
      physics:NeverScrollableScrollPhysics(),
      shrinkWrap:true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),children: [
        Card(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(19),
              width: 400,
              color: const Color.fromARGB(255, 238, 237, 237),
              child: Image.asset("images/watch.png",height: 130,fit:BoxFit.fill),
            ),
          ],
          ),
        ),

        Card(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(5),
              width: 400,
              color: const Color.fromARGB(255, 238, 237, 237),
              child: Image.asset("images/headset.png",height: 158,fit:BoxFit.fill),
            ),
          ],
          ),
        )     
      ],)
    
   

        
    
    







    
    ],),



),

);
}
}