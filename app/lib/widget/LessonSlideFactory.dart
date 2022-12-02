import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:text_to_speech/text_to_speech.dart';

/*
Takes in a map and makes a singular slide for lessons
Meant to maybe be expanded for JSON objects
*/
class LessonSlideFactory {
  static Widget getSlide(Map<String, dynamic> slide) {
    String type = slide['type'] ?? "";

    if (type == "explanation") {
      String title = slide['data']['title'] ?? "";
      String text = slide['data']['text'] ?? "";
      return ClipRect(
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 90),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100.withOpacity(0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2.0, color: Colors.black))),
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 20),
                        )),
                    Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Text(text,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                height: 1.5))),
                  ],
                ),
              )));
    } else if (type == "vocabulary") {
      String eng = slide['data']['English'] ?? "";
      String ppn = slide['data']['Pohnpeian'] ?? "";
      String pron = slide['data']['pronunciation'] ?? "";
      return ClipRect(
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 90),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100.withOpacity(0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2.0, color: Colors.black))),
                        child: Text(eng,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                height: 1.5))),
                    Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        width: double.infinity,
                        child: Text(ppn,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                height: 1.5))),
                    Container(
                        margin: const EdgeInsets.only(top: 10),
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () => {TextToSpeech().speak(pron)},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.only(left: 30, right: 30)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ))),
                            child: const Text(
                              'LISTEN',
                              style: TextStyle(color: Colors.white),
                            )))
                  ],
                ),
              )));
    } else {
      return Container(
          margin:
              const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 90),
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ));
    }
  }
}
