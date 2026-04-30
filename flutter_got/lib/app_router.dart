import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_got/business_logic/cubit/characters_cubit.dart';
import 'package:flutter_got/constants/strings.dart';
import 'package:flutter_got/data/models/characters.dart';
import 'package:flutter_got/data/repository/characters_repo.dart';
import 'package:flutter_got/data/web_services/characters_web_services.dart';
import 'package:flutter_got/data/web_services/quotes_web_services.dart';
import 'package:flutter_got/presentation/screens/characters_details_screen.dart';
import 'package:flutter_got/presentation/screens/characters_screen.dart';

class AppRouter {
  late CharactersRepo charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepo(
      CharactersWebServices(),
      QuotesWebServices(),
    );
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => charactersCubit,
            child: CharactersScreen(),
          ),
        );

      case charactersDetailsScreen:
        final character = settings.arguments as Character;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context)=> CharactersCubit(charactersRepository),
            child: CharactersDetailsScreen(character: character),
          ),
        );
    }

    final character = settings.arguments as Character;
    return MaterialPageRoute(
      builder: (_) => CharactersDetailsScreen(character: character),
    );
  }
}
