import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: Slide(),
    ));

class Slide extends StatefulWidget {
  const Slide({
    super.key,
  });

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {

  int index = 0;

  void nextSide(){
    setState(() {
      if(index < images.length-1){
        index++;
      }else{
        //index = 4 , length = 5-1 = 4 ; so => 4-4 = 0 here back to index[0]
        index -= images.length-1;
      }
    });
  }

  void backSlide(){
    setState(() {
      if(index > 0){
        index--;
      }else{
        //index = 0; if back we want back to index[3] so => index = 
        index = images.length-1;
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: () => {
              backSlide()
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: () => {
                nextSide()
              },
            ),
          ),
        ],
      ),
      body: Image.asset(images[index]),
    );
  }
}
