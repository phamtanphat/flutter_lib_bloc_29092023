import 'dart:async';
import 'counter_event.dart';

class CounterBloc {
  int total = 0;
  StreamController<CounterEventBase> eventController = StreamController();
  StreamController<int> stateController = StreamController();

  CounterBloc() {
    stateController.sink.add(total);
    eventController.stream.listen((event) {
      switch (event.runtimeType) {
        case IncrementEvent:
          increment(event as IncrementEvent);
          break;
      }
    });
  }

  void increment(IncrementEvent event) {
    total += event.count;
    stateController.sink.add(total);
  }
}
