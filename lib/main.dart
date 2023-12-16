
import 'package:flutter/material.dart';
import 'package:toku/screens/HomePage.dart';

void main()
{
  runApp(Toku());
}

class Toku extends StatelessWidget {
  const Toku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

    );
  }
}
