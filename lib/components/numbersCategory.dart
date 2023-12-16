import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/numbersPageModel.dart';

class NumCategory extends StatelessWidget {
   NumCategory({required this.item,required this.color}) ;

   NumbersModel? item ;

   Color? color;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: color!,
    child: Row(
    children: [
      Container(
          height: 100,
          color:Color(0xffFFF6DC),
          child: Image.asset('${item?.image}')),
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Expanded(
          child: Column(
            children: [
              Text('${item?.jpName}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 2)),
              Text('${item?.enName}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
              ),

            ],
          ),
        ),
      ),
     Spacer(flex: 1,),
     IconButton(onPressed: ()
     {
      item?.onTapped(item?.sound);
     },
    icon: Icon(Icons.play_arrow,
    color: Colors.white,
    size: 24,
    )),


    ],
     )
      );
  }
}
