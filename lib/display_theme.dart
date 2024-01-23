import 'package:book_application/app_data_theme.dart';
import 'package:flutter/material.dart';


class DisplayTheme extends StatelessWidget {
  final AppDataTheme appDataTheme;

  const DisplayTheme({super.key, required this.appDataTheme});

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
              appDataTheme.theme,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 21,
                  letterSpacing: 1.2,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
