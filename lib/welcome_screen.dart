import 'package:aqua/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {

  Row horizontalTitleRow(String title, double textSize, Color colour){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 120,
          height: 1.0,
          color: Colors.grey,
        ),
        Text(
          title,
          style:
          TextStyle(fontSize: textSize, color: colour),
        ),
        Container(
          height: 1.0,
          color: Colors.grey,
          width: 120,
        )
      ],
    );
  }
  Container socialButtons(String name, Color buttonColor, Color shadowColor) {
    return Container(
      padding: EdgeInsets.all(13.0),
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 20.0,
            offset: Offset(0, 6),
          ),
        ],
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
    );
  }

  Container textFieldContainer(String name, bool secureText) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
          ),
        ),
      ),
      padding: EdgeInsets.all(10.0),
      child: TextField(
        obscureText: secureText,
        style: TextStyle(
          fontSize: 23.0,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: name,
            hintStyle: TextStyle(
              fontSize: 23.0,
              color: Colors.grey[300],
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Color(0XFF2196F3), Color(0xFF6200ea)],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 70.0, horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Login ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 45.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 60.0,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 50.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF64b5f6),
                                blurRadius: 20.0,
                                offset: Offset(0, 6),
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                textFieldContainer('Email or Phone', false),
                                textFieldContainer('Password', true),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        FlatButton(
                          padding: EdgeInsets.only(left: 320.0),
                          onPressed: () {
                            print('Forgot Password');
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        InkWell(
                          onTap: (){
                            print('Login');
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 75.0),
                            height: 70.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              gradient: LinearGradient(
                                end: Alignment.topLeft,
                                begin: Alignment.topRight,
                                colors: [Color(0XFF2196F3), Color(0xFF651fff)],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35.0,
                        ),
                        horizontalTitleRow('   Continue with Social Accounts   ', 15.0, Colors.grey),
                        SizedBox(
                          height: 35.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                print('Facebook');
                              },
                              child: socialButtons('facebook', Colors.blue[700],
                                  Color(0xFF64b5f6)),
                            ),
                            InkWell(
                              onTap: (){
                                print('Google');
                              },
                              child: socialButtons(
                                  'Google', Colors.red[700], Colors.red[200]),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.0,),

                        Text('or',style: TextStyle(fontSize: 20.0),),
                        SizedBox(height: 3.0,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                            print('Create Account');
                          },
                          child: Text(
                            'Create Account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF283593),
                              fontSize: 25.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
