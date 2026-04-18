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

      bottomNavigationBar: BottomNavigationBar(
    iconSize: 30,   
    selectedItemColor: Colors.orange, 
    items: [
    BottomNavigationBarItem(icon:Icon(Icons.home_outlined),label: "*"),
    BottomNavigationBarItem(icon:Icon(Icons.shopping_bag_rounded),label:"*" ),
    BottomNavigationBarItem(icon:Icon(Icons.person_2_outlined),label:"*" ),
  ]),
  
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
        Image.asset(widget.dataitems['image']), //to reach to parent data
        Container(child: Text(widget.dataitems['title'],textAlign: TextAlign.center,style:
        TextStyle(fontWeight: FontWeight.bold,fontSize:18,
        )
        )
        ),
        Container(
          margin:EdgeInsets.only(top:8) ,
          child: Text(widget.dataitems['subtitle'],textAlign: TextAlign.center,style:TextStyle(
              color: Colors.grey[700])
            )),

          Container(
          margin:EdgeInsets.only(top:8,bottom: 12) ,
          child: Text(widget.dataitems['price'],textAlign: TextAlign.center,style:TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.amber
          ),)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            Text("Color :"),
            Container(width: 30,),
            Container(height: 16,width: 16,decoration:BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.orange)

            ),),
          Text(" Grey"),

          
            Container(width: 20,),
            Container(height: 16,width: 16,decoration:BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              
            ),),
          Text(" Black")
          ],),

      Container(height: 12),
      
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
                
                Text("Size :"),
                Text("   30   34   38   40   43   45",style: TextStyle(color: Colors.grey[700]) )

            ] ,
          ),
        

         

        


  Container(
    padding: EdgeInsets.symmetric(vertical: 5),
    margin: EdgeInsets.symmetric(horizontal: 75),
    child: MaterialButton(
      color: Colors.black,
      textColor: Colors.white,
      onPressed:(){},child:Text("Add To Cart",),),
  ),
      ],
      
      ),











    );
  }
}