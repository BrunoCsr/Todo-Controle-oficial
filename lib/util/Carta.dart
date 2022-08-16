import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_tts/flutter_tts_web.dart';

import '../appBase.dart';

import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class Carta extends StatefulWidget {
  const Carta({Key? key, required this.assignedText, required this.path})
      : super(key: key);
  final String path;
  final String assignedText;

  @override
  State<Carta> createState() => _CartaState();
}

class _CartaState extends State<Carta> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        width: 180,
        child: Material(
          color: Colors.blue,
          elevation: 8,
          borderRadius: BorderRadius.circular(25),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
              splashColor: darkBlue2,
              onTap: () async {
                await flutterTts.awaitSpeakCompletion(true);
                await flutterTts.speak(widget.assignedText);
              },
              child: Column(
                children: [
                  Expanded(
                    child: Ink.image(
                      image: NetworkImage(widget.path),
                      //height: 250,
                      //width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: Text(
                      widget.assignedText,
                      style: const TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  )
                ],
              )),
        ));
  }
}
