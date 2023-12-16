import 'package:audioplayers/audioplayers.dart';

class NumbersModel {
  String ? image ;
  String ? jpName ;
  String ? enName ;
  String ? sound ;

  NumbersModel({
    required this.sound,
     this.image,
    required this.jpName,
    required this.enName});

  onTapped (sound){
    final player = AudioPlayer();
    player.play(AssetSource('${sound}'));
  }
}