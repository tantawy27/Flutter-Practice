import 'package:flutter_got/data/models/characters.dart';
import 'package:flutter_got/data/models/quote.dart';
import 'package:flutter_got/data/web_services/characters_web_services.dart';
import 'package:flutter_got/data/web_services/quotes_web_services.dart';

class CharactersRepo {

 final CharactersWebServices charactersWebServices;
 final QuotesWebServices  quotesWebServices;

  CharactersRepo(this.charactersWebServices,this.quotesWebServices);


  Future<List<Character>> getAllCharacters() async{
    final characters =await charactersWebServices.getAllCharacters();
    return characters.map((character)=>Character.fromJson(character)).toList();
  }


    Future<Quote> getRandomQuote() async{
    final quote =await quotesWebServices.getRandomQuote();
    return Quote.fromJson(quote);
  }



}