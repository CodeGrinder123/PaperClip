//import 'dart:html';

import 'package:flutter/material.dart';
import 'homepage.dart';
//import 'pages/profilepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PaperClip',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'PaperClip'),
      routes: <String,WidgetBuilder>{
        '/CreateNewAccount' : (context) => CreateNewAccount(),
        '/ForgotPassword' : (context) => ForgotPassword(),
        '/MyUserPage' : (context) => MyUserPage(),
        '/MyHomePage': (context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    //final urlImage= 'https://www.canva.com/design/DAEs9FbaPIE/BWfeydJ-AUzapN8n8f9b5g/view?utm_content=DAEs9FbaPIE&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink';
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        //title: Text(widget.title),
      //),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image/new_bg.png'
            ),
            fit: BoxFit.cover,
          ),
        ),
        // Center is a layout widget. It takes a 
        //single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //header texts
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0,120,0,0),
                child: Text(
                  "Welcome to PaperClip!",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                  ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Enter your email address to sign in.\nDo a trade today!",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200,
                  color: Colors.white,
                  ),
                ),
              ),
            ),
            //email address text field
            Container(
              width: 330.0,
              child: TextField(
                style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: "Email Address"
                ),
              ),
            ),
            //password text field
            SizedBox(height: 10,),
            Container(
              width: 330.0,
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility :  Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            //forgot password button
            SizedBox(height: 2,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/ForgotPassword');
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,0,10,0),
                  child: Text("Forgot Password?",
                    style: TextStyle(),
                  ),
                ),
              ),
            ),
            //sign in button
            Container(
              width: 330.0,
              child: RaisedButton(
                color: Colors.orange[900],
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/MyUserPage');
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,1,0,0),
                  child: Text("SIGN IN"),
                ),
              ),
            ),
            //create new account button
            SizedBox(height: 5),
            ListTile(
              title: Row(
                children: <Widget>[
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                  child: Text("Don't have an account?",
                    style: TextStyle(fontSize: 13,),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.orange[900],
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context,'/CreateNewAccount');
                      }, 
                        child: Text(
                          "Create new account.",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ],
              ),
            ),

            SizedBox(height: 1.0),
            Text(
              "or",
              style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w300,
              ),
            ),
            //google sign in button
            SizedBox(height: 15.0),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 250.0,
                height: 40,
              child: RaisedButton(
                color: Colors.grey[200],
                textColor: Colors.grey[600],
                onPressed: (){},
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    ),
                    Container(),
                    Image.asset('assets/image/google_logo.png',
                    height: 25.0,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    ),
                    Text("Sign in with Google"),
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),

      //floatingActionButton: FloatingActionButton(
      //  onPressed: _incrementCounter,
      //  tooltip: 'Increment',
      //  child: Icon(Icons.add),
      //), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ForgotPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,

      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0.0, 275, 650),
        child: FloatingActionButton(
        child: new Icon(Icons.arrow_back_ios, color: Colors.white),
        elevation: 0.0,
        backgroundColor: Colors.orange[800],
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/MyHomePage");
        },
        ),
        ),
      //Background
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image/forgotpassword_bg.png'
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 70, 5, 0),
              child: Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                ),
            ),
          ),
          //header text 1
          SizedBox(height: 1.0,),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Text("Did someone forget their password?",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
              ),
            ),
          ),
          //header text 2
          SizedBox(height: 15.0,),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text("That's ok!",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text("Just send us the email address you've used to to\n \tregister with us and we'll send you a reset link!",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
              ),
            ),
          ),
          //email address text field
          SizedBox(height: 20.0,),
            Container(
              width: 330.0,
              child: TextField(
                style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: "\t Email Address"
                ),
              ),
            ),
            //submit button
            SizedBox(height: 15.0),
            Container(
              width: 330.0,
              child: RaisedButton(
                color: Colors.orange[900],
                textColor: Colors.white,
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,1,0,0),
                  child: Text("SUBMIT"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateNewAccount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    bool _isObscure =true;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      //back button to home page
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0.0, 275, 650),
        child: FloatingActionButton(
        child: new Icon(Icons.arrow_back_ios, color: Colors.white),
        elevation: 0.0,
        backgroundColor: Colors.orange[800],
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/MyHomePage");
        },
        ),
        ),
      //background design
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image/2nd_bg.png'
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          //header 1
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(25.0,120,0,0),
                child: Text(
                  "Create\nAccount",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                  ),
              ),
            ),
            //text fields for Name
            SizedBox(height: 30,),
            Container(
              width: 330.0,
              child: TextField(
                style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: "Full Name"
                ),
              ),
            ),
            //text field for contact no.
            SizedBox(height: 10.0,),
            Container(
              width: 330.0,
              child: TextField(
                style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: "Contact Number"
                ),
              ),
            ),
            //text field for email address
            SizedBox(height: 10.0,),
            Container(
              width: 330.0,
              child: TextField(
                style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: "Email Address"
                ),
              ),
            ),
            //text field for password
            SizedBox(height: 10,),
            Container(
              width: 330.0,
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility :  Icons.visibility_off,
                    ),
                    onPressed: () {
                      //setState(() {
                      //  _isObscure = !_isObscure;
                      //});
                    },
                  ),
                ),
              ),
            ),
            //sign up button
            SizedBox(height: 10.0),
            Container(
              width: 330.0,
              child: RaisedButton(
                color: Colors.orange[900],
                textColor: Colors.white,
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,1,0,0),
                  child: Text("SIGN UP"),
                ),
              ),
            ),
            //temrs conditions & privacy
            SizedBox(height: 10.0),
            Align(
                alignment: Alignment.center,
              child: Text("By Signing up you agree to our",
                style: TextStyle(fontSize: 13,
                color: Colors.grey,),
                ),
              ),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context,'/CreateNewAccount');
                  }, 
                  child: Text(
                    "Terms Condition & Privacy Policy.",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


