import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/counter_bloc.dart';
import 'package:food_app/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"increase/decrease App",
      home: BlocProvider<CounterBloc>(
        create: (context)=>CounterBloc(),
        child: CounterPage(),
      )
    );
  }
}