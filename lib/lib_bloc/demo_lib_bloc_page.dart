import 'package:flutter/material.dart';

class DemoLibBlocPage extends StatefulWidget {
  @override
  State<DemoLibBlocPage> createState() => _DemoLibBlocPageState();
}

class _DemoLibBlocPageState extends State<DemoLibBlocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo lib bloc"),
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
