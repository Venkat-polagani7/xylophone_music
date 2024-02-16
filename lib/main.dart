import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(const MyApp());
}
// }void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int noteNum){
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }
 /*
 NEW FUNCTION CREATED - As the image has to expand we have used return type as --Expanded--.
 we have used two input parameters one is Color and other is int.
 for the color i have just called the color parameter and for which note has to play i have used the noteNum.
 under the children i have called the buildWidget(colors.color, noteNum) for 7 times for 7 different buttons-different
 sound

  */
  Expanded buildWidget(Color color, int noteNum){
    return Expanded(
      child: ElevatedButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: (){
          playSound(noteNum);
        },
         child:  Text('Click to Play sound $noteNum',
         style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.bold,
           fontSize: 20,
         ),
         ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: AppBar(),
        backgroundColor: Colors. black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildWidget(Colors.red, 1),
              buildWidget(Colors.blue, 2),
              buildWidget(Colors.green, 3),
              buildWidget(Colors.orange, 4),
              buildWidget(Colors.purple, 5),
              buildWidget(Colors.teal, 6),
              buildWidget(Colors.pink, 7),
               ],
          ),
        ),
      ),
    );
  }
}



