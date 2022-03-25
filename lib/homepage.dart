import 'package:animation/imagepage.dart';
import 'package:animation/marquee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _first = false;
  bool _second = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Cross Feda"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _first = !_first;
                });
              },
              child: Text("Cross Feda"),
            ),
            AnimatedCrossFade(
              firstChild: FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 100.0,
              ),
              secondChild: FlutterLogo(
                style: FlutterLogoStyle.markOnly,
                size: 100.0,
              ),
              crossFadeState:
                  _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 3),
              sizeCurve: ElasticInOutCurve(),
              firstCurve: Curves.decelerate,
              secondCurve: Curves.decelerate,
            ),SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              setState(() {
                _second = ! _second;
              });

            },
                child: Text("cross feda 2"),),
            AnimatedCrossFade(
                firstChild: FlutterLogo(style: FlutterLogoStyle.markOnly,size: 100.0,),
                secondChild: FlutterLogo(size: 100.0,style: FlutterLogoStyle.horizontal,),
                crossFadeState: _second?CrossFadeState.showFirst:CrossFadeState.showSecond,
                duration: Duration(seconds: 3),
               sizeCurve: ElasticOutCurve(),
              firstCurve: Curves.decelerate,
              secondCurve: Curves.decelerate,

            ),
            SizedBox(height: 20,),
            Text("Marquee",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Divider(thickness: 3,color: Colors.pinkAccent,endIndent: 30,indent: 30,height: 5,),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Marquees()));
            }, child: Text("Marquee")),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ImagesPage()));
            }, child: Text("Images")),


          ],
        ),
      ),
    );
  }
}
