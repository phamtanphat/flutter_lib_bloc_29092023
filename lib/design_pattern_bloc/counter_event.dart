abstract class CounterEventBase {}


class IncrementEvent extends CounterEventBase {
  int count;

  IncrementEvent(this.count);
}