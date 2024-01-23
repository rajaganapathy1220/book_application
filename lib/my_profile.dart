import 'package:flutter/material.dart';

import 'drawer_navigation.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Color(0xFFDA9100),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 27,
            color: Colors.white,
          ),
        ),
      ),
      body: const SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/raja.jpg'),
            ),
            Padding(
              padding: EdgeInsets.all( 10),
              child: Text(
                'Raja Ganapathy D',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFFDA9100),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFFDA9100),
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: 300,
              child: Divider(
                color: Color(0xFFDA9100),
              ),
            ),
            Card(
              margin: EdgeInsets.all(15),
              child: ListTile(
                leading: Icon(
                  Icons.phone_android,
                  color: Color(0xFFDA9100),
                ),
                title: Text(
                  '9360261781',
                  style: TextStyle(
                    color: Color(0xFFDA9100),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(15),
              child: ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: Color(0xFFDA9100),
                ),
                title: Text('rajaganapathy.d.t@gmail.com',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFDA9100),
                ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
