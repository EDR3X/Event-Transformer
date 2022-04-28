import 'package:event_transformer/bloc/counter_bloc.dart';
import 'package:event_transformer/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Event Transformer",
        theme: ThemeData(primarySwatch: Colors.green),
        home: const HomePage(),
      ),
    );
  }
}
