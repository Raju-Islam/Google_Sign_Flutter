import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign/provider/google_sign_in.dart';
import 'package:google_sign/widget/logged_in_widget.dart';
import 'package:google_sign/widget/sign_up_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context)=>GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
            final provider=Provider.of<GoogleSignInProvider>(context,listen: false);
            if(provider.isSignIn){
              return buildLoading();
            }else if(snapshot.hasData){
             return LoggedInWidget();
            }
            else{
              return SignUpWidget();
            }
           
          },
          ),
        ),
    );
  }
  Widget buildLoading() =>Center(child: CircularProgressIndicator(backgroundColor: Colors.blueAccent),);
}