import 'package:flutter/material.dart';
import '../components/numbersCategory.dart';
import '../models/numbersPageModel.dart';

class Numbers extends StatelessWidget {
   Numbers();

   NumbersModel? number ;
   List numbers = [
     NumbersModel(
         sound: 'sound/numbers/number_one_sound.mp3',
         image: 'assets/images/numbers/number_one.png',
         enName: 'One', jpName: 'Ichi'),
     NumbersModel(
         sound: 'sound/numbers/number_two_sound.mp3',
         image: 'assets/images/numbers/number_two.png',
         enName: 'Two', jpName: 'Ni'),
     NumbersModel(
         sound: 'sound/numbers/number_three_sound.mp3',
         image: 'assets/images/numbers/number_three.png',
         enName: 'Three', jpName: 'San'),
     NumbersModel(
         sound: 'sound/numbers/number_four_sound.mp3',
         image: 'assets/images/numbers/number_four.png',
         enName: 'Four', jpName: 'Shi'),
     NumbersModel(
         sound: 'sound/numbers/number_five_sound.mp3',
         image: 'assets/images/numbers/number_five.png',
         enName: 'Five', jpName: 'Go'),
     NumbersModel(
         sound: 'sound/numbers/number_six_sound.mp3',
         image:'assets/images/numbers/number_six.png',
         enName: 'Six', jpName: 'Roku'),
     NumbersModel(
         sound: 'sound/numbers/number_seven_sound.mp3',
         image: 'assets/images/numbers/number_seven.png',
         enName: 'Seven', jpName: 'Sebun'),
     NumbersModel(
         sound: 'sound/numbers/number_eight_sound.mp3',
         image: 'assets/images/numbers/number_eight.png',
         enName: 'Eight',jpName: 'Hachi'),
     NumbersModel(
         sound: 'sound/numbers/number_nine_sound.mp3',
         image: 'assets/images/numbers/number_nine.png',
         enName: 'Nine',jpName: 'Kyū'),
     NumbersModel(
         sound: 'sound/numbers/number_ten_sound.mp3',
         image: 'assets/images/numbers/number_ten.png',
         enName: 'Ten',jpName: 'Jū'),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF694125),
        title: Text('Numbers'),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context,index){
        return NumCategory(
          item: numbers[index],
          color: Colors.orange,
        );
          }),

    );
  }
}
