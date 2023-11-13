import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lib_bloc_29092023/lib_bloc/lib_counter_bloc.dart';
import 'package:flutter_lib_bloc_29092023/lib_bloc/lib_counter_event.dart';
import 'package:flutter_lib_bloc_29092023/lib_bloc/lib_counter_state.dart';

class DemoLibBlocPage extends StatefulWidget {
  @override
  State<DemoLibBlocPage> createState() => _DemoLibBlocPageState();
}

class _DemoLibBlocPageState extends State<DemoLibBlocPage> {

  final LibCounterBloc bloc = LibCounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo lib bloc"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: BlocBuilder<LibCounterBloc, LibCounterStateBase>(
          bloc: bloc,
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Count: ${state.count}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: () {
                      bloc.add(LibIncrementEvent(1));
                    }, child: Text("Increment")),
                    ElevatedButton(onPressed: () {}, child: Text("Decrement")),
                    ElevatedButton(onPressed: () {}, child: Text("Reset")),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
