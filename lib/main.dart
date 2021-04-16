import 'package:flutter/material.dart';
import 'package:google_sign/page/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
Future main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(),);

}
class MyApp extends StatelessWidget {
  final String title="Google Sign";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:title ,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
    );
  }
}
