import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'constant_event.dart';
part 'constant_state.dart';

class ConstantBloc extends Bloc<ConstantEvent, ConstantState> {
  late int duration = 75;
  ConstantBloc() : super(ConstantInitial()) {
    on<ConstantEvent>((event, emit) {
      emit(GameInitial(
        duration: duration,
      ));
    });
    on<ChangeDuration>((event, emit) {
      duration = event.newDuration;
      emit(GameInitial(
        duration: duration,
      ));
    });
  }
}
