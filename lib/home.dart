import 'package:bloc_first/cubit/counter_cubit.dart';
import 'package:bloc_first/cubit/counter_cubit_state.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<CounterCubit,CounterCubitState>(builder: (context,state){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            (state is CounterValueUpdate)?Text(state.counter.toString()):Text('0'),


            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterCubit>().CounterIncrease();
                  },
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterCubit>().CounterDecrease();
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
