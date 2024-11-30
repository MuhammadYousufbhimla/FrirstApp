import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myfirsapp/MDcard.dart';
import 'package:myfirsapp/Naigationbar.dart';
import 'package:myfirsapp/Signin.dart';
import 'package:myfirsapp/Signup.dart';
import 'package:myfirsapp/bottom.dart';
import 'package:myfirsapp/curved.dart';
import 'package:myfirsapp/jsondata.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
// void main() {
//   runApp(const MyApp());

  
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SignUp Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Signup(),
      //home:Curved(num: "0 ",)
    );
  }
}










