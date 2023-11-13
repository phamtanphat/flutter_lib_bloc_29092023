abstract class LibCounterStateBase {
  int count;

  LibCounterStateBase(this.count);
}


class InitCounterState extends LibCounterStateBase {

  InitCounterState(super.count);
}

class IncrementSuccess extends LibCounterStateBase {

  IncrementSuccess(super.count);
}