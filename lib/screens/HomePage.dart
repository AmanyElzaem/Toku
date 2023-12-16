import 'package:flutter/material.dart';
import 'package:toku/screens/Numbers.dart';
import 'package:toku/screens/phrasesPage.dart';

import 'FamilyMembersScreen.dart';
import 'colorsScreen.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

   List<String> texts = ["Numbers", "Family Members","Colors","Phrases"];
   var colors = [0xffEF9235,0xff558B37,0xff79359F,0xff50ADC7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xFF694125),
        title: Text('Toku',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
        ),
    ),
      body:
          ListView.builder(
            itemCount:texts.length ,
              itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                if(index == 0){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Numbers();
                  }));
                }
               else if (index == 1){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return FamilyMembers() ;
                   }));
                }
                else if (index == 2){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ColorsClass() ;
                  }));
                }
                else if (index == 3){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Phrses() ;
                  }));
                }


              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  height: 80,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 16),
                  color: Color(colors[index]) ,
                  child: Text('${texts[index]}',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white))

                  ),
            );
          }




      ),


    );
  }
}


