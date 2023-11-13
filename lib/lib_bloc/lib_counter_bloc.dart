import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lib_bloc_29092023/lib_bloc/lib_counter_event.dart';
import 'package:flutter_lib_bloc_29092023/lib_bloc/lib_counter_state.dart';

class LibCounterBloc extends Bloc<LibCounterEventBase, LibCounterStateBase> {

  LibCounterBloc() : super(InitCounterState(0)) {
    on<LibIncrementEvent>((event, emit) {
      emit(IncrementSuccess(event.count + state.count));
    });
  }
}