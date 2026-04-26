import 'package:bloc/bloc.dart';
import 'package:flutter_got/data/models/characters.dart';
import 'package:flutter_got/data/repository/characters_repo.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo charactersRepositry;
  late List<Character> characters;

  CharactersCubit(this.charactersRepositry) : super(CharactersInitial());

  List<Character> getAllCharacters() {

    charactersRepositry.getAllCharacters().then((characters){
    emit(Charactersloaded(characters));
    this.characters = characters;
    
    });

    return(characters);
  }
}
