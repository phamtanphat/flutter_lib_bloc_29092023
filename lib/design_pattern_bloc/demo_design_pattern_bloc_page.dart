import 'package:flutter/material.dart';
import 'package:flutter_lib_bloc_29092023/design_pattern_bloc/counter_bloc.dart';

import 'counter_event.dart';

class DemoDesignPatternBlocPage extends StatefulWidget {
  @override
  State<DemoDesignPatternBlocPage> createState() =>
      _DemoDesignPatternBlocPageState();
}

class _DemoDesignPatternBlocPageState extends State<DemoDesignPatternBlocPage> {
  final CounterBloc bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo design pattern bloc"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StreamBuilder(
              initialData: null,
              stream: bloc.stateController.stream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.active) {
                  return Text("Count: ${snapshot.data}");
                } else {
                  return Text("Empty");
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {
                  bloc.increment(IncrementEvent(1));
                }, child: Text("Increment")),
                ElevatedButton(onPressed: () {}, child: Text("Decrement")),
                ElevatedButton(onPressed: () {}, child: Text("Reset")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
