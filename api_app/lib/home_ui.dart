import 'package:api_app/cubit/my_cubit.dart';
import 'package:api_app/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {

  List<User>usersList = [];
  User user=User();

  @override
  void initState() {
  super.initState();
  //BlocProvider.of<MyCubit>(context).emitGetAllUsers();
  BlocProvider.of<MyCubit>(context).emitGetUserDetails(8446860); // Replace 1 with the actual user ID
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title:Text("Home Screen"),backgroundColor:Color.fromARGB(255, 8, 206, 216
      )
      ),

      body: Column(
        children: [
          /* BlocBuilder<MyCubit,MyState>(
            builder: (context, state) {
              if (state is GetAllUsers) {
                usersList = (state).allUsersList;
                return ListView.builder(
              shrinkWrap: true,
              itemCount: usersList.length, 


                  itemBuilder: (BuildContext context, int index) {
              return Container(
              height: 50,
              color: const Color.fromARGB(255, 150, 101, 200),
              child: Center (child: Text (usersList[index].name.toString())
              )
              );
                
              }
                );
                
              } 

              else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
                 }
               }) 
               */


              
              BlocBuilder<MyCubit,MyState>(
            builder: (context, state) {
              if (state is GetUserDetails) {
                user = (state).userDetails;
                return  Container(
              height: 50,
              color: const Color.fromARGB(255, 150, 101, 200),
              child: Center (child: Text (user.name.toString())
              )
              );
                
                
                
              } 

              else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
                 }
               })
        ],

      ),
    );
  }
}