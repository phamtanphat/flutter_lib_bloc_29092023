import 'package:flutter/material.dart';

class DemoDesignPatternBlocPage extends StatefulWidget {

  @override
  State<DemoDesignPatternBlocPage> createState() => _DemoDesignPatternBlocPageState();
}

class _DemoDesignPatternBlocPageState extends State<DemoDesignPatternBlocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo design pattern bloc"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Count: 0"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Increment")),
                ElevatedButton(onPressed: () {}, child: Text("Decrement")),
                ElevatedButton(onPressed: () {}, child: Text("Reset")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

