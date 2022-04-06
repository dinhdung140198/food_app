
import '../event/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc() : super(0);
  @override
  @override
  Stream<int > mapEventToState(CounterEvent event) async*{
    switch(event){
      case CounterEvent.increase:
      var newState= state +1;
      yield newState;
      break;
      case CounterEvent.decrease:
      var newState= state - 1;
      yield newState;
      break;
    }
  }
}