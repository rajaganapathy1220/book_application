import 'package:flutter/material.dart';
import 'app_data_text.dart';

class DisplayText extends StatelessWidget {
  final AppDataText appDataText;

  const DisplayText({super.key, required this.appDataText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 280,
        decoration: BoxDecoration(
          // color: Color(0xFFFF4500),0xFFDA9100,0xFF228B22
          color: Color(0xFFDA9100),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              appDataText.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, letterSpacing: 1.2, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
