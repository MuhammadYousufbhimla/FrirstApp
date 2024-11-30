import 'package:flutter/material.dart';
import 'package:myfirsapp/Login.dart';
import 'package:myfirsapp/style.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with InputValidationMixin {
  final formGlobalKey = GlobalKey<FormState>();

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool _passwordVisible = false;
  @override
  void initState() {
    _passwordVisible = false;
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  Future signup1() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Sucessfully Register.You Can Login Now",
          style: TextStyle(color: Colors.greenAccent),
        ),
        duration: Duration(seconds: 2),
      ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "Email already exit Plz enter another email.",
            style: TextStyle(color: Colors.greenAccent),
          ),
          duration: Duration(seconds: 2),
        ));
      }
    } catch (e) {
      print(e);
    }
  }

  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: constant.purple,
        toolbarHeight: MediaQuery.of(context).size.height * 0.20,
        title: Center(
            child:
                // Lottie.asset('assets/lottiefile/sign-up.json', height: 200),
                Text(
          'SignUp',
          style: TextStyle(
            letterSpacing: 2,
            fontSize: MediaQuery.of(context).size.width * 0.08,
          ),
        )),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
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
              children: [
                Container(
                  child: TextFormField(
                    controller: firstname,
                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: constant.black),
                    decoration: InputDecoration(
                      labelText: "First Name",
                      prefixIcon: Icon(Icons.person_add),
                    ),
                    validator: (first) {
                      if (first!.trim().isEmpty) {
                        return 'Enter  First name ';
                      }

                      return null;
                    },
                  ),
                ),
                Container(
                  child: TextFormField(
                    
                    controller: lastname,
                    // textAlign: TextAlign.center,
                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: constant.black),
                    // maxLength: 8,
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      prefixIcon: Icon(Icons.person_add),
                    ),
                    validator: (first) {
                      if (first!.trim().isEmpty) {
                        return 'Enter Last name ';
                      }

                      return null;
                    },
                  ),
                ),
                Container(
                  child: TextFormField(
                    controller: email,
                    // textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0, color: constant.black),
                    autofocus: false,
                    decoration: InputDecoration(
                        labelText: "Email", prefixIcon: Icon(Icons.email)),
                    validator: (email) {
                      if (isEmailValid(email!))
                        return null;
                      else
                        return 'Enter a valid email address';
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02)),
                Container(
                    child: TextFormField(
                        autofocus: false,
                  controller: password,
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
                    else
                      return 'Enter a valid password';
                  },
                )),
                InkWell(
                  onTap: () {
                    if (formGlobalKey.currentState!.validate()) {
                      formGlobalKey.currentState!.save();
                      setState(() {
                        email.text.isEmpty
                            ? _validate = true
                            : _validate = false;
                        password.text.isEmpty
                            ? _validate = true
                            : _validate = false;
                        firstname.text.isEmpty
                            ? _validate = true
                            : _validate = false;
                        lastname.text.isEmpty
                            ? _validate = true
                            : _validate = false;

                        signup1();

                        firstname.text = "";
                        lastname.text = "";
                        email.text = "";
                        password.text = "";
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          "UnSucessfully Register.Please enter field..",
                          style: TextStyle(color: Colors.white),
                        ),
                        duration: Duration(seconds: 02),
                      ));
                    }
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
                        child: Text(
                      "SignUp ",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 2, fontSize: 18),
                    )),
                  ),
                ),
                InkWell(
                  
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.02,
                        top: MediaQuery.of(context).size.height * 0.01,
                        bottom: MediaQuery.of(context).size.height * 0.01,
                      ),
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
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
                          child: Text(
                        "SignIn ",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2,
                            fontSize: 18),
                      )),
                    ),
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
