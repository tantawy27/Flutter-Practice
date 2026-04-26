import 'package:flutter_got/data/models/characters.dart';
import 'package:flutter_got/data/web_services/characters_web_services.dart';

class CharactersRepo {

 final CharactersWebServices charactersWebServicess;

  CharactersRepo({required this.charactersWebServicess});


  Future<List<Character>> getAllCharacters() async{
    final characters =await charactersWebServicess.getAllCharacters();
    return characters.map((character)=>Character.fromJson(character)).toList();
  }


}