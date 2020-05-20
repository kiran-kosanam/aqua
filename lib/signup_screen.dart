import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'textfield_container.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String email;
    String name;
    String password;
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 65.0, left: 22.0, bottom: 26.0),
                child: Text(
                  'Create Account',
                  style: TextStyle(color: Colors.white, fontSize: 40.0),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(55.0),
                      topLeft: Radius.circular(55.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 60.0,
                          ),
                          TextFieldContainer(
                            child: TextField(
                              obscureText: false,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Name',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                name = value;
                                print(name);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          TextFieldContainer(
                            child: TextField(
                              obscureText: false,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                email = value;
                                print(email);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          TextFieldContainer(
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                password = value;
                                print(password);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0XFF2196F3),
                                    Color(0XFF2196F3),
                                    Color(0xFF6200ea)
                                  ],
                                )),
                            child: InkWell(
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25.0,
                                    color: Colors.white),
                              ),
                              onTap: () {
                                print('Create Account');
                              },
                            ),
                          )
                        ],
                      ),
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
