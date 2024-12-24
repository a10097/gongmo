import 'dart:ui';

import 'package:flutter/material.dart';
import './style.dart' as style;

void main() {
  runApp(MaterialApp(
    theme: style.theme,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var tab = 0;

  double boxWidth = 500;
  double boxHeight = 250;

  changeBoxHeight(){
    setState(() {
      if(tab == 0){
        boxHeight = 250;
      }
      else if(tab == 1){
        boxHeight = 600;
      }
      else if(tab == 2){
        boxHeight = 500;
      }
    });
  }

  changeTab(int num){
    setState(() {
      tab = num;
      changeBoxHeight();
    });
  }


  @override

  Widget build(context) {
    return Scaffold(
        body: Center(
           child: Container(
            padding: style.mainContainer.padding,
            decoration: style.mainContainer.decoration,
            width: boxWidth, height: boxHeight,
             child: [Home(changeTab : changeTab),Question(),Answer()][tab],
           ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){changeTab(0);},
        child: Icon(Icons.home),),
    );
  }
}



class Home extends StatelessWidget {
  Home({super.key, this.changeTab});

  final changeTab;

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 3,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('AI 두비드노트',style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
            Flexible(
              flex: 3,
              child: ElevatedButton(onPressed: (){changeTab(1);},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: Text('질문하기')),
            ),
            Flexible(
              flex: 3,
              child: ElevatedButton(onPressed: (){changeTab(2);},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text('설명하기')),
            ),
          ]
    );
  }
}

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('문제',style: Theme.of(context).textTheme.bodyMedium,),
            ),
            SizedBox(
              width: 460,
              height: 100,
              child: TextField(
                style: style.input.style,
                decoration: style.input.decoration,
                expands: true,
                maxLines: null,
              ),
            ),
          ],
        ),

        Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('답변',style: Theme.of(context).textTheme.bodyMedium,),
            ),
            SizedBox(
              width: 460,
              height: 200,
              child: TextField(
                style: style.input.style,
                decoration: style.input.decoration,
                expands: true,
                maxLines: null,
              ),
            ),
          ],
        ),

        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('text',style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(
                width: 360,
                height: 50,
                child: TextField(
                  style: style.input.style,
                  decoration: style.input.decoration,
                  expands: true,
                  maxLines: null,
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.record_voice_over),color: Colors.red,)
            ],
          ),
        ),

        ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
            ),
            child: Text('확인')
        ),

      ],
    );
  }
}

class Answer extends StatelessWidget {
  const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('답변',style: Theme.of(context).textTheme.bodyMedium,),
            ),
            SizedBox(
              width: 460,
              height: 200,
              child: TextField(
                style: style.input.style,
                decoration: style.input.decoration,
                expands: true,
                maxLines: null,
              ),
            ),
          ],
        ),

        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('text',style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(
                width: 360,
                height: 50,
                child: TextField(
                  style: style.input.style,
                  decoration: style.input.decoration,
                  expands: true,
                  maxLines: null,
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.record_voice_over),color: Colors.red,)
            ],
          ),
        ),

        ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
            ),
            child: Text('확인')
        ),


      ],


    );
  }
}

