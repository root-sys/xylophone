import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

   void playSounds(int number){
     final player = AudioPlayer();
     player.play(AssetSource('note$number.wav'));
   }

   Expanded myWidget({required Color color, required int soundNumber}){
    return Expanded(
         child: TextButton(
           style: TextButton.styleFrom(
               backgroundColor: color
           ),
           onPressed: ()  {
             playSounds(soundNumber);
           },
           child: Text(""),

         )
     );
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade800,
          title: Center(child: const Text("XYLOPHONE")),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          myWidget(color: Colors.red, soundNumber: 1),
              myWidget(color: Colors.yellow, soundNumber: 2),
              myWidget(color: Colors.blue, soundNumber: 3),
              myWidget(color: Colors.white, soundNumber: 4),
              myWidget(color: Colors.orange, soundNumber: 5),
              myWidget(color: Colors.green, soundNumber: 6),
              myWidget(color: Colors.purple, soundNumber: 7)

            ],
          ),
        ),
      ),
    );
  }
}
