import 'package:ecommerce_app/details.dart';
import 'package:flutter/material.dart';



class Homepage extends StatefulWidget {
const Homepage({super.key});
@override
State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

List categories = [
{
"iconname": Icons.laptop,
"title": "Laptop"
},
{
"iconname" : Icons.phone_android_outlined,
"title":"Mobile"
},
{
"iconname": Icons.electric_bike,
"title":"Bike"
},
{
"iconname": Icons.card_giftcard_outlined,
"title": "Gifts"
},
{
"iconname": Icons.electric_car_outlined,
"title": "car"
}
] ;


List best_selling=[
  {"image":"images/watch.png",
  "title":"Rolex Watch",
  "subtitle":"MF MINI FOCUS Mens  Watch",
  "price":"350\$"}
  
  
  ,
  {"image":"images/headset.png",
  "title":"Logitech Headset",
  "subtitle":"Logitech G335 Wired Gaming Headset",
  "price":"100\$"},

    {"image":"images/iphone.png",
  "title":"iPhone 17 Pro Max",
  "subtitle":"Apple iPhone 17 Pro Max,(256 GB),eSIM",
  "price":"1800\$"}
  ,
  {"image":"images/Asus_laptop.png",
  "title":"ASUS ROG Strix G16",
  "subtitle":"AMD Ryzen™ 9 8940HX /16GB DDR5 ",
  "price":"600\$"}
];




@override
Widget build (BuildContext context) {
return Scaffold(
   bottomNavigationBar: BottomNavigationBar(
    iconSize: 30,   
    selectedItemColor: Colors.orange, 
    items: [
    BottomNavigationBarItem(icon:Icon(Icons.home_outlined),label: "*"),
    BottomNavigationBarItem(icon:Icon(Icons.shopping_bag_rounded),label:"*" ),
    BottomNavigationBarItem(icon:Icon(Icons.person_2_outlined),label:"*" ),
  ]),

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
      child: ListView.builder(
        itemCount:categories.length ,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context,i){

        return  Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color:const Color.fromARGB(255, 238, 237, 237),borderRadius: BorderRadius.circular(120)),
                child:Icon(categories[i]['iconname'],size: 30,),
                padding: EdgeInsets.all(15)),
                Text(categories[i]['title'],style: TextStyle(fontWeight:FontWeight.bold,color:Color.fromARGB(255, 92, 92, 92) ),),
            ],
                    ),

        );
        } 
       )      
      ),


    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text("Best Selling",
      style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
      ),




      GridView.builder(
      itemCount: best_selling.length,
      physics:NeverScrollableScrollPhysics(),
      shrinkWrap:true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 260),
      itemBuilder:(context,i){


        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder:(context) => ItemDetails(dataitems: best_selling[i],),));
          } ,
                        
            child: Card(
                 
            child:
              Column(
              crossAxisAlignment:CrossAxisAlignment.start, 
              children: [
               Container(
                padding: EdgeInsets.all(15),
                width: 200,
                color: const Color.fromARGB(255, 238, 237, 237),
                child: Image.asset(best_selling[i]["image"],height: 140,fit:BoxFit.fill),
              ), 
              Text(best_selling[i]["title"],style:TextStyle(fontWeight: FontWeight.bold),),
              Container(height: 1,),
              Text(best_selling[i]["subtitle"],style: TextStyle(fontSize: 13,color: Colors.grey),),
              Container(height: 3,),
              Text(best_selling[i]["price"],style: TextStyle(fontSize: 13,color: Colors.orange,fontWeight: FontWeight.bold),)
            ], 
            ),
          ),
        );
      }

      ),
             

       
      ],
      )
  ),
);



}
}
    
   

        