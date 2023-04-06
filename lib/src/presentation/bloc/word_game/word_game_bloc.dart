import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'word_game_event.dart';
part 'word_game_state.dart';

class WordGameBloc extends Bloc<WordGameEvent, WordGameState> {
  WordGameBloc() : super(WordGameInitial()) {
    on<WordGameEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
