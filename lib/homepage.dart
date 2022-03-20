import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/profilepage.dart';
import 'pages/tradepage.dart';
import 'pages/messagepage.dart';

class MyUserPage extends StatefulWidget{
  @override
  UserPage createState() => UserPage();
}

class UserPage extends State<MyUserPage>{
  int currentIndex = 0;
  
  final screens = [
    ProfilePage(),
    TradePage(),
    MessagePage(),
  ];

  Widget build(BuildContext context) => Scaffold(
      resizeToAvoidBottomInset: false,

      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 275, 585),
        child: FloatingActionButton(
        child: new Icon(Icons.arrow_back_ios, color: Colors.orange[900]),
        elevation: 0.0,
        backgroundColor: Colors.white70,
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/MyHomePage");
        },
        ),
        ),
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.orange[900],
              unselectedItemColor: Colors.black.withOpacity(.60),
              selectedFontSize: 14,
              unselectedFontSize: 14,
              iconSize: 20,
              currentIndex: currentIndex,
              onTap: (value) => setState(() => currentIndex = value),
              items: [
                  BottomNavigationBarItem(
                    label: 'Profile',
                    icon: Icon(CupertinoIcons.person_crop_circle),
                  ),
                  BottomNavigationBarItem(
                    label: 'Trade',
                    icon: Icon(CupertinoIcons.arrow_swap),
                  ),
                  BottomNavigationBarItem(
                    label: 'Message',
                    icon: Icon(CupertinoIcons.chat_bubble),
                  ),
              ],
            ),
  );
}