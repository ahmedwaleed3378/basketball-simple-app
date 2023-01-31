import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterIncrementState> {
  CounterCubit() : super(CounterAIncrementState());
  int aIncrement = 0;
  int bIncrement = 0;
  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      aIncrement += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      bIncrement += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
