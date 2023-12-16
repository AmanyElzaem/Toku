import 'package:flutter/material.dart';

import '../components/phrasesCategory.dart';
import '../models/numbersPageModel.dart';

class Phrses extends StatelessWidget {
   Phrses({Key? key}) : super(key: key);

  List Phrases =[
    NumbersModel(
      jpName: 'kodudo suru koto '
              'wasurenaide kudasai',
      enName: 'Don not forget to subscribe',
      sound: 'sound/phrases/dont_forget_to_subscribe.wav'
    ),
    NumbersModel(
        jpName: 'Watashi wa purguraminigu'
                'ga daisukkidesu',
        enName: 'I love Programming',
        sound: 'sound/phrases/i_love_programming.wav'
    ),
    NumbersModel(
        jpName: 'Puroguraminigu wa kantandesu',
        enName: 'Programing is easy',
        sound: 'sound/phrases/programming_is_easy.wav'
    ),
    NumbersModel(
        jpName: 'Doko ni iku no',
        enName: 'where are you going?',
        sound: 'sound/phrases/where_are_you_going.wav'
    ),
    NumbersModel(
        jpName: 'Namae wanandesu ka',
        enName: 'What is your name?',
        sound: 'sound/phrases/what_is_your_name.wav'
    ),
    NumbersModel(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I love anime',
        sound: 'sound/phrases/i_love_anime.wav'
    ),
    NumbersModel(
        jpName: 'Go kibunwa ikagadesu ka',
         enName: 'How are you feeling',
        sound: 'sound/phrases/how_are_you_feeling.wav'
    ),
    NumbersModel(
        jpName: 'kimaasu ka',
        enName: 'are you comming',
        sound: 'sound/phrases/are_you_coming.wav'
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF694125),
        title: Text('Phrases'),
      ),
      body: ListView.builder(
          itemCount: Phrases.length,
          itemBuilder: (context,index){
            return
              PhrasesCategory(
              item: Phrases[index],
              color: Color(0xff56B4C5),
            );
          }),

    );
  }
}
