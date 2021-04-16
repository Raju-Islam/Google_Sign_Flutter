import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
class GoogleSignUpButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(4.0),
      child:OutlineButton.icon(
        label: Text("Sign In With Google",
        style: new TextStyle(fontWeight:FontWeight.bold,
        fontSize:18,
        ),
        ),
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(horizontal: 12,vertical:5),
        highlightedBorderColor: Colors.black,
        borderSide: BorderSide(
          color:Colors.redAccent,
        ),
        textColor: Colors.black,
        icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,size:30,),
        onPressed: (){
          final provider=
          Provider.of<GoogleSignInProvider>(context,listen: false);
          provider.login();
        },
      ),
    );
  }
}
