import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'app_data_text.dart';
import 'display_text.dart';
import 'drawer_navigation.dart';

class PageViewText extends StatefulWidget {
  const PageViewText({super.key});

  @override
  State<PageViewText> createState() => _PageViewTextState();
}

class _PageViewTextState extends State<PageViewText> {
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
          'Quotes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                shareof();
              },
              icon: Icon(Icons.share))
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
              itemCount: appDataText.length,
              itemBuilder: (context, index) {
                var text = appDataText[index];
                var scale = _selectedIndex == index ? 1.0 : 0.8;

                return TweenAnimationBuilder(
                    tween: Tween(begin: scale, end: scale),
                    duration: Duration(milliseconds: 400),
                    child: DisplayText(
                      appDataText: text,
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
                        appDataText.length.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  void shareof() {
    print('-----share');
    print(appDataText[_selectedIndex].text);

    Share.share(appDataText[_selectedIndex].text);
  }
}
