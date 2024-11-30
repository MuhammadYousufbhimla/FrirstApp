  import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfirsapp/jsondata.dart';
import 'package:myfirsapp/style.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignUpState();
}

class _SignUpState extends State<SignIn> with InputValidationMixin {
  final formGlobalKey = GlobalKey<FormState>();
    FirebaseAuth auth = FirebaseAuth.instance;
late String email;
late String password;


  
  
  bool _passwordVisible = false;
  @override
  void initState() {
    _passwordVisible = false;
  }

// Future Login(context) async {
//     try {
//       var user = await auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       if (user != null) {
//                Navigator.push(
//             context, MaterialPageRoute(builder: (context) => Home()));
//              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text(
//           "Sucessfully Login.. ",
//           style: TextStyle(color: Colors.greenAccent),
//         ),
//         duration: Duration(seconds: 2),
//       ));

//       } else {
        
//   print("Password invalid ");
//       //    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       //   content: Text(
//       //     "Password invalid ",
//       //     style: TextStyle(color: Colors.greenAccent),
//       //   ),
//       //   duration: Duration(seconds: 2),
//       // ));
//       }
//     } catch (e) {
//       //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       //   content: Text(
//       //     "Password invalid ",
//       //     style: TextStyle(color: Colors.greenAccent),
//       //   ),
//       //   duration: Duration(seconds: 2),
//       // ));
//       print(e);
//     }
//   }

  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: constant.purple,
        toolbarHeight: MediaQuery.of(context).size.height * 0.20,
        
        title: Text(

          'SignIn',
          
          style: TextStyle(
        letterSpacing: 2,
        fontSize: MediaQuery.of(context).size.width * 0.08,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
   leading: IconButton(onPressed: (){   Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),

      ),
    
     
      body: Form(
        key: formGlobalKey,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
              bottom: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.height * 0.02,
            ),
            
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               
                  Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.07
                )),
             
                Container(
                  child: TextFormField(
                            onChanged: (value) {
                  email = value;
                            },
                    // textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0, color: constant.black),
                    autofocus: false,
                    decoration: InputDecoration(
                        labelText: "Email", prefixIcon: Icon(Icons.email)),
                    validator: (email) {
                      if (isEmailValid(email!))
                        return null;
                      else{  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          "Enter a valid Email address",
                          style: TextStyle(color: Colors.white),
                        ),
                        duration: Duration(seconds: 02),
                      ));}
                        // return 'Enter a valid email address';
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.06)),
                Container(
                    child: TextFormField(
                             onChanged: (value) {
                  password = value;
                            },
                  maxLength: 06,
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_sharp),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                  validator: (password) {
                    if (isPasswordValid(password!))
                      return null;
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          "Enter a valid password",
                          style: TextStyle(color: Colors.white),
                        ),
                        duration: Duration(seconds: 02),
                      ));}
                    //  return 'Enter a valid password';
                  },
                )),
                Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.05
                )),
                InkWell(
                  onTap: (){

    
    setState(() async {
//   try {
//   UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//     email: email,
//     password: password
    
    
//   );
//   Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
// } on FirebaseAuthException catch (e) {
//   if (e.code == 'user-not-found') {
//     print('No user found for that email.');
//   } else if (e.code == 'wrong-password') {
//     print('Wrong password provided for that user.');
//   }
// }
  try {
      var user =  auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (user!=null) {
             Navigator.push(
            context, MaterialPageRoute(builder: (context) => JsondataSample()));
      
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Sucessfully Login.. ",
          style: TextStyle(color: Colors.white),
        ),
        duration: Duration(seconds: 2),
      ));
  
      } else {
        
  print("Password invalid ");
    
      }
    } catch (e) {
     
      print(e);
    }
  

    
 });

     
                   },

                  
                  
                  
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.02,
                      top: MediaQuery.of(context).size.height * 0.01,
                      bottom: MediaQuery.of(context).size.height * 0.01,
                    ),
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                      bottom: MediaQuery.of(context).size.height * 0.01,
                      left: MediaQuery.of(context).size.height * 0.02,
                      right: MediaQuery.of(context).size.height * 0.02,
                    ),
                    decoration: BoxDecoration(
                      color: constant.purple,
                      borderRadius: BorderRadius.circular(08),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                        child:
                          Text(
                              "LogIn ",
                                           style: TextStyle(
                           color: Colors.white, letterSpacing: 2, fontSize: 18),
                                         )),
                  ),
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length == 6;
  // bool isFirstValid(String firstname) => firstname.length == 08;
  // bool isLastValid(String lastname) => lastname.length == 08;

  bool isEmailValid(String email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return regex.hasMatch(email);
  }
}
