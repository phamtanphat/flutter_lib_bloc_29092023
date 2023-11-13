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
        case DecrementEvent:
          decrement(event as DecrementEvent);
          break;
        case ResetEvent:
          reset(event as ResetEvent);
          break;
      }
    });
  }

  void increment(IncrementEvent event) {
    total += event.count;
    stateController.sink.add(total);
  }

  void decrement(DecrementEvent event) {
    total += event.count;
    stateController.sink.add(total);
  }

  void reset(ResetEvent event) {
    total = event.count;
    stateController.sink.add(total);
  }
}
