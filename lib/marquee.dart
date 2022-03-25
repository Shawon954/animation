import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:widget_marquee/widget_marquee.dart';
class Marquees extends StatefulWidget {
  const Marquees({Key? key}) : super(key: key);

  @override
  State<Marquees> createState() => _MarqueesState();
}

class _MarqueesState extends State<Marquees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Marquee"),
      automaticallyImplyLeading: false,
      centerTitle: true,),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Marquee(
                child: Text('Very long text that bleeds out of the rendering space Very long text that bleeds out of the rendering space'),
                loopDuration: const Duration(seconds: 25),
                gap: 20.0,
              ),
            ),
            SizedBox(height: 30,),
            AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                  "simple code of flutter Name by Animated Text Kit",textStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),
                    speed: Duration(seconds: 1),


                  ),



                ],


              totalRepeatCount: 4,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              pause: Duration(seconds: 1),
            ),
             SizedBox(height: 30,),
             
             AnimatedTextKit(

               animatedTexts: [
               RotateAnimatedText("Flutter Developer"),
               RotateAnimatedText("Flutter Deve"),
               RotateAnimatedText("Flutter D"),
               RotateAnimatedText("Flutter "),

             ],

        onTap: (){
                 print("hello");
        },
  ),



          ],
        ),
      ),
    );
  }
}

