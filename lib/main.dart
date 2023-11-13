import 'package:flutter/material.dart';
import 'package:flutter_lib_bloc_29092023/design_pattern_bloc/demo_design_pattern_bloc_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoDesignPatternBlocPage()
    );
  }
}
