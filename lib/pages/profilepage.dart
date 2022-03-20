import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  @override 

  Widget build(BuildContext context)=> Scaffold(
    resizeToAvoidBottomInset: false,
    
    body: Center(
      child: Text("This Profile Page", 
      style: TextStyle(
        color: Colors.black,
      ),
      ),
    ),
  );
  
}