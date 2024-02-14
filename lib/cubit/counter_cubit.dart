



import 'package:bloc_first/cubit/counter_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterCubitState>{

  int counter=0;

  CounterCubit():super(CounterInitiate());

  void CounterIncrease(){
    counter++;
    emit(CounterValueUpdate(counter: counter));
  }
  void CounterDecrease(){
    counter--;
    emit(CounterValueUpdate(counter: counter));
  }

}