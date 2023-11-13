abstract class CounterEventBase {}


class IncrementEvent extends CounterEventBase {
  int count;

  IncrementEvent(this.count);
}

class DecrementEvent extends CounterEventBase {
  int count;

  DecrementEvent(this.count);
}

class ResetEvent extends CounterEventBase {
  int count;

  ResetEvent(this.count);
}