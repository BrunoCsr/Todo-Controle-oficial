import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'dart:math' as math;

import '../appBase.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String texto = "";
  FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            color: darkBlue1,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Transform(
          transform: Matrix4.rotationZ(math.pi / 4),
          alignment: Alignment.center,
          child: Stack(
            children: [
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                    color: darkBlue1,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 3, color: Colors.amberAccent)),
              ),
              Transform(
                  transform: Matrix4.rotationZ(math.pi / -4),
                  alignment: Alignment.center,
                  child: Container(
                    width: 400,
                    height: 400,
                    child: Center(
                      child: SizedBox(
                        width: 350,
                        height: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: darkBlue1, //background color
                              onPrimary: Colors.black,
                              elevation: 0 //ripple color
                              ),
                          onPressed: () {
                            flutterTts.setSpeechRate(1);
                            flutterTts.speak(texto);
                          },
                          child: Text(texto),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.amberAccent),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
