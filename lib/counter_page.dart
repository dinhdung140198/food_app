

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/counter_bloc.dart';
import 'package:food_app/event/counter_event.dart';
class CounterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CounterBloc,int>(
          builder: (context, counter) {
            final CounterBloc counterBloc = context.read<CounterBloc>();
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Click button to increase or decrease: ", style: TextStyle(fontSize: 25),),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: FlatButton(
                    onPressed: (){
                      counterBloc.add(CounterEvent.increase);
                    },
                    child: Text("Increase (+)",
                    style: TextStyle(fontSize: 10,color: Colors.black),  ),
                  ),
                ),
                Text("Result: $counter",style: TextStyle(fontSize: 25, color: Colors.red),),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: FlatButton(
                    onPressed: (){
                      counterBloc.add(CounterEvent.decrease);
                    },
                    child: Text("Decrease (-)",
                    style: TextStyle(fontSize: 10,color: Colors.black),  ),
                  ),
                )
              ],
            );
          }
        )
      ),
    );
  }
}