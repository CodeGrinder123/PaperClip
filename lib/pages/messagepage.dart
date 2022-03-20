import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget{
  @override 

  Widget build(BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: false,
    
    body: Center(
      child: Text("This Message", 
      style: TextStyle(
        color: Colors.black,
      ),
      ),
    ),
  );
  
}