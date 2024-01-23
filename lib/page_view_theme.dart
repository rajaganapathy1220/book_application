import 'package:book_application/display_theme.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'app_data_theme.dart';
import 'drawer_navigation.dart';

class PageViewTheme extends StatefulWidget {
  const PageViewTheme({super.key});

  @override
  State<PageViewTheme> createState() => _PageViewThemeState();
}

class _PageViewThemeState extends State<PageViewTheme> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Color(0xFFDA9100),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Themes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFDA9100),
                  ),
                ),
              )
            ],
            onSelected: (value) {
              if (value == 1) {
                shareof();
              }
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              controller: PageController(viewportFraction: 0.7),
              itemCount: appDataTheme.length,
              itemBuilder: (context, index) {
                var theme = appDataTheme[index];
                var scale = _selectedIndex == index ? 1.0 : 0.8;

                return TweenAnimationBuilder(
                    tween: Tween(begin: scale, end: scale),
                    duration: Duration(milliseconds: 400),
                    child: DisplayTheme(
                      appDataTheme: theme,
                    ),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: child,
                      );
                    }); // return DisplayText(appDataText: appDataText[index]);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  (_selectedIndex + 1).toString() +
                      '/' +
                      appDataTheme.length.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void shareof() {
    print('-----share');
    print(appDataTheme[_selectedIndex].theme);

    Share.share(appDataTheme[_selectedIndex].theme);
  }
}
