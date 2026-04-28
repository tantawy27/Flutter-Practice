import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_got/business_logic/cubit/characters_cubit.dart';
import 'package:flutter_got/constants/my_colors.dart';
import 'package:flutter_got/data/models/characters.dart';
import 'package:flutter_got/presentation/widgets/character_item.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  List<Character>? allCharacters;
  bool _isSearching = false;
  List<Character>? searchedForCharacters;
  final _searchTextController = TextEditingController();

  Widget _buildSearchField() {
    return TextField(
      controller: _searchTextController,
      cursorColor: MyColors.myGrey,
      decoration: InputDecoration(
        hintText: "Find a Character...",
        hintStyle: TextStyle(color: MyColors.myGrey, fontSize: 18),
      ),
      style: TextStyle(color: MyColors.myGrey, fontSize: 18),
      onChanged: (searchedCharacter) {
        addSearchedForItemToSearchedList(searchedCharacter);
      },
    );
  }

  void addSearchedForItemToSearchedList(String searchedCharacter) {
    searchedForCharacters = allCharacters
        ?.where(
          (character) =>
              character.fullName.toLowerCase().startsWith(searchedCharacter),
        )
        .toList();
    setState(() {});
  }

  List<Widget> _buildAppBarActions() {
    if (_isSearching) {
      return [
        IconButton(
          onPressed: () {
            _clearSearch();
            Navigator.pop(context);   //dismiss screen
          },
          icon: Icon(Icons.clear, color: MyColors.myGrey),
        ),
      ];
    } else {
      return [
        IconButton(
          onPressed: _startSearch,
          icon: Icon(Icons.search, color: MyColors.myGrey),
        ),
      ];
    }
  }

  void _startSearch() {
    ModalRoute.of(
      context,
    )!.addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching)); //automaticly create backbutton
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearch();
    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearch() {
    setState(() {
      _searchTextController.clear();
    });
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is Charactersloaded) {
          allCharacters = (state).characters;
          return buildLoadedListWidgets();
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }

  Widget showLoadingIndicator() {
    return Center(child: CircularProgressIndicator(color: MyColors.myYellow));
  }

  Widget buildLoadedListWidgets() {
    return SingleChildScrollView(
      child: Container(
        color: MyColors.myGrey,
        child: Column(children: [buildCaractersList()]),
      ),
    );
  }

  Widget buildCaractersList() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: _searchTextController.text.isEmpty ? allCharacters?.length:searchedForCharacters?.length,
      itemBuilder: (ctx, index) {
        //Not Done
        return CharacterItem(character:
        _searchTextController.text.isEmpty ? allCharacters![index] : searchedForCharacters![index]);
      },
    );
  }

  Widget _bulidAppBarTitle(){
    return Text("Characters", style: TextStyle(color: MyColors.myGrey)
    );
      
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: _isSearching ? _buildSearchField():_bulidAppBarTitle(),
        actions: _buildAppBarActions(),
      ),
      body: buildBlocWidget(),
    );
  }
}
