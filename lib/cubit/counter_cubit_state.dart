



import 'package:equatable/equatable.dart';

abstract class CounterCubitState extends Equatable{
const CounterCubitState();
}

class CounterInitiate extends CounterCubitState{
  @override
  // TODO: implement props
  List<Object?> get props => [];//throw UnimplementedError();

}


class CounterValueUpdate extends CounterCubitState{


  int counter;


  CounterValueUpdate({required this.counter});

  @override
  // TODO: implement props
  List<Object?> get props => [];//throw UnimplementedError();


}