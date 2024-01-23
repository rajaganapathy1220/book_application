import 'package:book_application/page_view_text.dart';
import 'package:book_application/page_view_theme.dart';
import 'package:book_application/page_view_words.dart';
import 'package:flutter/material.dart';

import 'company_profile.dart';
import 'my_profile.dart';

class DrawerNavigation extends StatefulWidget {
  DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/natureBG1.webp'),
                fit: BoxFit.fitWidth,
              ),
            ),
            accountName: Text(
              'Nature\'s Tapestry',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 17
              ),
            ),
            accountEmail: Text(
              'Version 1.0',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/Nature Profile.png'),
              radius: 50,
            ),
          ),
          ListTile(
            title: Text(
              'Quotes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageViewText()));
            },
          ),
          ListTile(
            title: Text(
              'Themes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageViewTheme()));
            },
          ),
          ListTile(
            title: Text(
              'Words',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageViewWords()));
            },
          ),
          ListTile(
            title: Text(
              'Company Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => CompanyProfile()));
            },
          ),
          ListTile(
            title: Text(
              'Developer Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MyProfile()));
            },
          ),
        ],
      ),
    );
  }
}
