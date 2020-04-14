import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loginscreenapp/pages/signin.dart';


void main() => runApp(MaterialApp(

  routes: {
    '/': (context) => Home(),
    '/signin': (context) => SignIn(),
  },
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // root widget for the app

      backgroundColor: Colors.grey[250],
      body: Center(
        child: SafeArea(
          child: ListView(

            children: <Widget>[
              Container(
                // Zorex logo
                margin: EdgeInsets.fromLTRB(40.0, 60.0, 40.0, 20.0),
                child: Image.asset(
                    'assets/Logo.png',
                  width: 120.0,
                  height: 140.0,
                ),
              ),
              Container(
                // Zorex logo login title
                margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 10.0),
                child: Text(
                  'Log Into Your Zorex account',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[900],
                  ),
                ),
              ),
              Container(

                // the username login input field

                margin: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'something@thisone.com',
                      contentPadding: EdgeInsets.all(10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
              ),
              Container(

                // Login password field

                margin: EdgeInsets.fromLTRB(40.0, 25.0, 40.0, 0.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password',
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
              Container(

                // login button

                margin: EdgeInsets.fromLTRB(30.0, 10.0, 40.0, 0.0),
                child: RaisedButton(
                  elevation: 6.0,
                  color: Colors.tealAccent[400],
                    onPressed: (){},
                  child: Text(
                      'Login',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                )
              ),
              Center(
                child: Text(
                  'Don\'t have a account?',
                  style: TextStyle(
                    color: Colors.grey[850],
                    fontSize: 15.0,
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blue[800],
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
