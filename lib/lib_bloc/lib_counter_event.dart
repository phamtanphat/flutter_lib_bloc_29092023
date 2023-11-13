abstract class LibCounterEventBase {}

class LibIncrementEvent extends LibCounterEventBase{
  int count;

  LibIncrementEvent(this.count);
}