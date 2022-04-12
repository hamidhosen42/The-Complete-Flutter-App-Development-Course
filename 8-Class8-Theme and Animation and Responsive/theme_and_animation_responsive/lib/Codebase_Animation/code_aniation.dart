// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:theme_and_animation/Animation/lotti_animation.dart';
import 'package:theme_and_animation/Codebase_Animation/details_screen.dart';

class CodeAnimation extends StatefulWidget {
  const CodeAnimation({Key? key}) : super(key: key);

  @override
  State<CodeAnimation> createState() => _CodeAnimationState();
}

class _CodeAnimationState extends State<CodeAnimation> {
  double _height = 100;
  double _width = 200;
  Color _color = Colors.black;
  double _fontSize = 20;
  double _right = 30;
  double _opacity = 1;

  Alignment _align = Alignment.centerRight;

  void animatedContainer() {
    setState(() {
      _height = 150;
      _width = 300;
      _color = Colors.blueAccent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _opacity = 0.1;
          });
        },
        child: Text("Opacity"),
      ),
      appBar: AppBar(
        title: Text("Code Base Animation"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // -------Hero animation-----------
              Card(
                elevation: 10,
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailScreen()));
                  },
                  leading: Hero(
                    tag: '1',
                    child: Image.network(
                        "https://media.istockphoto.com/photos/st-marteen-picture-id478958514?b=1&k=20&m=478958514&s=170667a&w=0&h=dR9QmxJTJ0yo7CG-2pOQgZxBllylNjRz_q3Gyj6kJy0="),
                  ),
                  title: Text("Goragori"),
                ),
              ),

              // ----------------AnimatedAlign---------------
              AnimatedAlign(
                child: Text("Hamid Hosen"),
                alignment: _align,
                duration: Duration(seconds: 3),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _align = Alignment.centerLeft;
                  });
                },
                child: Text("Change Alignment"),
              ),

              SizedBox(
                height: 30,
              ),

              // -------------------------- AnimatedOpacity-------------------------
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 3),
                child: Card(
                  child: ListTile(
                    title: Text("My List tile"),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              // ------------------------------AnimatedPositioned----------------------------

              Container(
                height: 200,
                width: 300,
                color: Colors.green,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                        right: _right,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _right = 100;
                            });
                          },
                          child: Text("animate"),
                        ),
                        duration: Duration(seconds: 3))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              // ---------------------------------------AnimatedDefaultTextStyle-----------------------------
              AnimatedDefaultTextStyle(
                  child: Center(
                      child:
                          Text("We are learning animated default text style")),
                  style: TextStyle(fontSize: _fontSize, color: Colors.green),
                  duration: Duration(seconds: 3)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _fontSize = 25;
                    });
                  },
                  child: Text("Animation")),
              SizedBox(
                height: 30,
              ),

              // ------------------------------AnimatedContainer------------------------------

              AnimatedContainer(
                duration: Duration(seconds: 3),
                curve: Curves.bounceInOut,
                height: _height,
                width: _width,
                onEnd: () {
                  setState(() {
                    _width = _width == 200 ? 400 : 200;
                    _color =
                        _color == Colors.black ? Colors.green : Colors.green;
                  });
                },
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    animatedContainer();
                    // setState(() {
                    //   _height = 150;
                    //   _width = 250;
                    //   _color = Colors.blueAccent;
                    // });
                  },
                  child: Text("Animation")),

              // ------------------------------Lottie animation Buttom----------------------
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnimationPage()));
                  },
                  child: Text("Lottie animation")),
            ],
          ),
        ),
      ),
    );
  }
}
