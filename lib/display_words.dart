import 'package:book_application/app_data_words.dart';
import 'package:flutter/material.dart';
import 'app_data_text.dart';

class DisplayWords extends StatelessWidget {
  final AppDataWords appDataWords;

  const DisplayWords({super.key, required this.appDataWords});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 280,
        decoration: BoxDecoration(
          color: Color(0xFFDA9100),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              appDataWords.words,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 23,
                  letterSpacing: 1.2,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
