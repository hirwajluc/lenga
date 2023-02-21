/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:flutter/material.dart';
import 'package:lenga/Screens/subcategories.dart';
import 'package:lenga/constants.dart';
import 'package:video_player/video_player.dart';

main(){
  runApp(Step1Video2());
}

class Step1Video2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    controller.play();
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.asset('assets/videos/cat_1_lesson_3.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value){
      setState(() {});
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                controller.pause();
                return Subcategories();
              },
            ),
          ),
        ),
        title: Text("Ese ayo usohora aruta ayo winjiza?"),
        //backgroundColor: Colors.redAccent,
      ),
      body: Container(
          child: Column(
              children:[
                AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                ),


                Container(
                    child: VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors:VideoProgressColors(
                          backgroundColor: Colors.redAccent,
                          playedColor: Colors.green,
                          bufferedColor: Colors.purple,
                        )
                    )
                ),

                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: (){
                            if(controller.value.isPlaying){
                              controller.pause();
                            }else{
                              controller.play();
                            }

                            setState(() {

                            });
                          },
                          icon:Icon(controller.value.isPlaying?Icons.pause:Icons.play_arrow, size: videoIconSize,)
                      ),

                      IconButton(
                          onPressed: (){
                            controller.seekTo(Duration.zero);
                            controller.pause();

                            setState(() {

                            });
                          },
                          icon:const Icon(Icons.stop, size: videoIconSize,)
                      )
                    ],
                  ),
                )
              ]
          )
      ),
    );
  }
}