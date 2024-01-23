import 'package:flutter/material.dart';

import 'drawer_navigation.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Color(0xFFDA9100),
        iconTheme: IconThemeData(
          color: Colors.white70,
        ),
        title: const Text(
          'Company Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(50),
                      child: Image.asset('images/company profile.jpg'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Tidy Life\nIndia Pvt ltd',
                      style: TextStyle(
                        color: Color(0xFFDA9100),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
                width: 350,
                child: Divider(
                  color: Color(0xFFDA9100),
                  thickness: 2,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xFFDA9100),
                    ),
                    title: Text(
                      '+91 86103 38291',
                      style: TextStyle(
                        color: Color(0xFFDA9100),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(
                      Icons.email_outlined,
                      color: Color(0xFFDA9100),
                    ),
                    title: Text(
                      'tidylifeindia@gmail.com',
                      style: TextStyle(
                        color: Color(0xFFDA9100),
                        fontSize: 20,
                        // fontFamily: 'Air',
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: Color(0xFFDA9100),
                    ),
                    title: Text(
                      'Chennai - Perungalathur , Nanmangalam and Ambattur',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFDA9100),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
