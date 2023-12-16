import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/numbersCategory.dart';
import '../models/numbersPageModel.dart';

class ColorsClass extends StatelessWidget {
   ColorsClass({Key? key}) : super(key: key);

  List colors = [
    NumbersModel(jpName: 'kuro',enName: 'black',
        image: 'assets/images/colors/color_black.png',
        sound: 'sound/colors/black.wav'
    ),
    NumbersModel(jpName: 'chairo',enName: 'brown',
        image: 'assets/images/colors/color_brown.png',
        sound: 'sound/colors/brown.wav'
    ),
    NumbersModel(jpName: 'Haiiro',enName: 'gray',
        image: 'assets/images/colors/color_gray.png',
        sound: 'sound/colors/gray.wav'
    ),
    NumbersModel(jpName: 'midori',enName: 'green',
        image: 'assets/images/colors/color_green.png',
        sound: 'sound/colors/green.wav'
    ),
    NumbersModel(jpName: 'Aka',enName: 'red',
        image: 'assets/images/colors/color_red.png',
        sound: 'sound/colors/red.wav'
    ),
    NumbersModel(jpName: 'shiro',enName: 'White',
        image: 'assets/images/colors/color_white.png',
        sound: 'sound/colors/white.wav'
    ),
    NumbersModel(jpName: 'aisfr',enName: 'Yellow',
        image: 'assets/images/colors/color_black.png',
        sound: 'sound/colors/yellow.wav'
    ),
    NumbersModel(jpName: '',enName: 'Dusty_yellow',
        image: 'assets/images/colors/color_dusty_yellow.png',
        sound: 'sound/colors/dusty yellow.wav'
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF694125),
        title: Text('Colors'),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context,index){
            return NumCategory(
              item: colors[index],
              color: Color(0xff7E3FA3),
            );
          }),

    );
  }
}
