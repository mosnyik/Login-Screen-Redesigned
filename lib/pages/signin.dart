import 'package:flutter/material.dart';
import 'package:loginscreenapp/main.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      body: SafeArea(
          child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 60.0, 40.0, 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Enter Your SurName First',
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
                  margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
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
                  margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      hintText: 'Phone',
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
                  margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'password',
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
                  margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Enter Password Again',
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

                  // sign in button

                    margin: EdgeInsets.fromLTRB(30.0, 10.0, 40.0, 10.0),
                    child: RaisedButton(
                      elevation: 6.0,
                      color: Colors.tealAccent[400],
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        'Register',
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
                    'Have an account already?',
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
                      'Login',
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
    );
  }
}
