import 'package:flutter/material.dart';
import 'package:flutter_got/constants/strings.dart';
import 'package:flutter_got/presentation/screens/characters_details.dart';
import 'package:flutter_got/presentation/screens/characters_screen.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case charactersScreen:
      return MaterialPageRoute(builder: (_)=> CharactersScreen());
      case charactersDetailsScreen:
      return MaterialPageRoute(builder: (_)=> CharactersDetailsScreen());



    }
  

  }

}