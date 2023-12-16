import 'package:flutter/material.dart';
import 'package:toku/components/numbersCategory.dart';
import '../models/numbersPageModel.dart';

class FamilyMembers extends StatelessWidget {
   FamilyMembers({Key? key}) : super(key: key);

   List family =[
     NumbersModel(jpName: 'chichioya',enName: 'Father',
         image: 'assets/images/family member/family_father.png',
         sound: 'sound/family_members/father.wav'
     ),
     NumbersModel(jpName: 'Musume',enName: 'Daughter',
         image: 'assets/images/family member/family_daughter.png',
         sound: 'sound/family_members/daughter.wav'
     ),
     NumbersModel(jpName: 'Ojisan',enName: 'Grand Father',
         image: 'assets/images/family member/family_grandfather.png',
         sound: 'sound/family_members/grand father.wav'
     ),
     NumbersModel(jpName: 'Hahaoys',enName: 'Mother',
         image: 'assets/images/family member/family_mother.png',
         sound: 'sound/family_members/mother.wav'
     ),
     NumbersModel(jpName: 'sobo',enName: 'GrandMother',
         image: 'assets/images/family member/family_grandmother.png',
         sound: 'sound/family_members/grand mother.wav'
     ),
     NumbersModel(jpName: 'Nisan',enName: 'Older  Brother',
         image: 'assets/images/family member/family_older_brother.png',
         sound: 'sound/family_members/older bother.wav'
     ),
     NumbersModel(jpName: 'Ane',enName: 'Older Sister',
         image: 'assets/images/family member/family_older_sister.png',
         sound: 'sound/family_members/older sister.wav'
     ),
     NumbersModel(jpName: 'Musuko',enName: 'Son',
         image: 'assets/images/family member/family_son.png',
         sound: 'sound/family_members/son.wav'
     ),
     NumbersModel(jpName: 'ototo',enName: 'Younger Brother',
         image: 'assets/images/family member/family_younger_brother.png',
         sound: 'sound/family_members/younger brohter.wav'
     ),
     NumbersModel(jpName: 'Sainensho',enName: 'Yonger Sister',
         image: 'assets/images/family member/family_younger_sister.png',
         sound: 'sound/family_members/younger sister.wav'
     ),



   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF694125),
        title: Text('Family Members'),
      ),
      body: ListView.builder(
          itemCount: family.length,
          itemBuilder: (context,index){
            return NumCategory(
              item: family[index],
              color: Color(0xff428500),
            );
          }),

    );
  }
}


//0xff428500