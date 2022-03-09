import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp( XylophoneApp() );

class XylophoneApp extends StatelessWidget {

// I can set the type of this function >> Expanded or Widget <<
Expanded buildItem({required String sound , required Color color} ){
    return Expanded(

      // GestureDetector is the same of InkWell
      child: InkWell(
        onTap: (){

        final player = AudioCache();
        player.play(sound);},
        child: Container(
          color: color,

          // width: double.infinity,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(   // the body of the scaffold is column
          body: Column(
  //crossAxisAlignment: CrossAxisAlignment.stretch,    // this is the same of double.infinity
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                buildItem(color: Colors.red, sound: 'note1.wav'),
                buildItem(color: Colors.orange, sound: 'note2.wav'),
                buildItem(color: Colors.yellow, sound: 'note3.wav'),
                buildItem(color: Colors.green, sound: 'note4.wav'),
                buildItem(color: Colors.teal, sound: 'note5.wav'),
                buildItem(color: Colors.blue, sound: 'note6.wav'),
                buildItem(sound: 'note7.wav',color: Colors.purple),

              ],
          ),
          ),
      ),

    );
  }
}

