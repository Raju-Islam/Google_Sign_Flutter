import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
class LoggedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user=FirebaseAuth.instance.currentUser;
    return Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Text("Logged In",style:new TextStyle(color:Colors.white),),
          SizedBox(height:8.0),
          new CircleAvatar(
            maxRadius: 25,
            backgroundImage: NetworkImage(user.photoURL),
          ),
          SizedBox(height:8.0),
          Text(
           "Name:"+user.displayName,style: new TextStyle(color:Colors.white),
          ),
          SizedBox(height:8.0),
          Text(
            "Email address:"+user.email,style: new TextStyle(color:Colors.white),
          ),
          SizedBox(height:8.0),
          ElevatedButton(
            onPressed: (){
          final provider=
          Provider.of<GoogleSignInProvider>(context,listen: false);
          provider.logout();
          
            },
          child: Text("Logout"),

          )
        ],
      ),
    );
  }
}