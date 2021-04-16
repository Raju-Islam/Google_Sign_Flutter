import 'package:flutter/material.dart';

import 'google_sign_up_button_widget.dart';
class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Spacer(),
       Align(
         alignment: Alignment.centerLeft,
          child: Container(
           margin: EdgeInsets.symmetric(horizontal: 20),
           width: 160,
            child: new Text("Welcome Back To My App",
            style: new TextStyle(
              fontSize:30,
              fontWeight:FontWeight.bold,
              color:Colors.black
            ),
            ),
         ),
       ),
       Spacer(),
       GoogleSignUpButtonWidget(),
       SizedBox(height:20),
       Text("Login to continue",
       style: new TextStyle(fontSize:16),
       ),
       Spacer(),
     ],
    );
  }
}