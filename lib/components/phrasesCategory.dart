import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/numbersPageModel.dart';

class PhrasesCategory extends StatelessWidget {

  PhrasesCategory({required this.color,required this.item});

  NumbersModel? item;
  Color? color ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${item?.jpName}',
                  style: TextStyle(fontSize: 15,color: Colors.white),
                  ),
                  Text('${item?.enName}',
                    style: TextStyle(fontSize: 16,color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Spacer(flex: 1,),
          IconButton(onPressed: (){
            item?.onTapped(item?.sound);
            }, icon: Icon(Icons.play_arrow,
          color: Colors.white,
            size: 24,
          ))
        ],

      ),
    );
  }
}
