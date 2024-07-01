import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:techwave_development/home_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 13), (){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_)=> const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            color: Color.fromARGB(255, 18, 32, 47),
            child: Image.asset('assets/images/abstract_design.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('TechWave Development',
                          textStyle: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tech',
                            color: Colors.white
                          ),
                          speed: const Duration(milliseconds: 150)),
                      TypewriterAnimatedText('Développons ensemble l\'avenir numérique.',
                          textStyle: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tech',
                              color: Colors.white
                          ),
                          speed: const Duration(milliseconds: 150)
                      ),

                    ],

                    isRepeatingAnimation: true,
                  )
                ],
              )
            ],
          ),
        ],
      )
    );
  }
}
