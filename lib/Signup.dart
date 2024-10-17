import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirsapp/Signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => _SignupState();
}

 Widget  drawerlist (String title,String subtitle,String trailing){
   return ListTile(
         leading:Icon(Icons.home),
          title: Text(title,style: TextStyle(fontSize: 12),),
         subtitle:Text(subtitle),
         trailing:Text(trailing),
         iconColor: Colors.green,
          
     
    );
 }

class _SignupState extends State<Signup> {
  @override
 
 
    final _formKey = GlobalKey<FormState>();
    TextEditingController  _firstnamecontroller = TextEditingController();
    TextEditingController  _lastnamecontroller = TextEditingController();
    TextEditingController  _DOB = TextEditingController();
   
      bool _isHidden = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Form"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 132, 3, 244),
              width: double.infinity,
              child: Column(
                children: [
                  
                Container(
                  height: 90,
                  width: 90,
                  margin: EdgeInsets.only(top: 40,bottom: 10),
                  decoration: BoxDecoration(
                   //color: Colors.green,
                    shape: BoxShape.circle,
                    image: DecorationImage
                    (
                      image: NetworkImage("https://t3.ftcdn.net/jpg/05/68/49/90/240_F_568499083_q9QfafI1PkGJA8QQMIpiTT557xUUJ4Qq.jpg"),
                    fit: BoxFit.cover,
                    )
                  ),
                ),
              Text("Muhammad Yousuf ",style: TextStyle(fontSize: 25,color: Colors.white),)

                ],
              ),
            ),
           
           drawerlist("Home","abc","test"),
           drawerlist("about","abc","test"),
           drawerlist("setting ","abc","test"),
           drawerlist("service","abc","test"),
           drawerlist("Home","abc","test"),

            //ListTile(
            // ListTile(
            //   iconColor: Colors.green,
            //   tileColor: Colors.yellow,
            //   title:  Text("Home",style: TextStyle(fontSize: 15),),
            //    leading:Icon(Icons.home) ,
            //    trailing: Text("test"),
            //    subtitle: Text("abc"),
            //    onTap: (){
            //       // Navigator.of(context).pop();
            //           Navigator.push(context,
            //       MaterialPageRoute(builder: 
            //       (context)=>Signin(name: "",),

            //       ));
            //    },
            // ),
          //   Padding(padding: EdgeInsets.only(top: 2)),
          //  ListTile(
          //     tileColor: Colors.yellow,
          //     title: Text("Setting",style: TextStyle(fontSize: 15),),
          //     leading:Icon(Icons.settings) ,
          //     onTap: (){
          //       Navigator.of(context).pop();
          //       Navigator.push(context,
          //       MaterialPageRoute(builder: 
          //       (context)=>BottomAppBar()
                
          //   ));
          //     },
          //   ),
          ],
        ),
        
      ),
    body: Center(
      child: Form(
        key:_formKey,
          child:  Container(
            margin: EdgeInsets.all(30 ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.05),
              color: Color.fromARGB(255, 248, 245, 252),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 5, 62, 88),
                  blurRadius: 10,
                  spreadRadius: 2
                )
              ]
            ),
            child: ListView(
                //scrollDirection: Axis.horizontal  ,
               // padding: EdgeInsets.all(200),
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push
                      (context, MaterialPageRoute(builder: (context)=>Signin(name: "test",)));
                    },
                  
                    
                    child: Center(child: Text("Click me"))),
                  Center(child: Text("Welcome")),
                 Container(
                    //color: Colors.green,
                    //alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: TextFormField(
                    onTap: (){
                      setState(() {
                        //Method Call
                        _selectdate();
                      });
                    },
                   
                  controller: _DOB,
                    textAlign: TextAlign.center ,
                    autofocus: true,
                    cursorColor: Colors.black,
                   decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Date Of Birth:"),
                    
                   ),
                  ),
                 ),
                   Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: TextFormField(
                    controller: _lastnamecontroller,
                  //validator: (valuess) => EmailValidator.validate(value) ? null : "Please enter a valid email",
                    textAlign: TextAlign.center ,
                    autofocus: true,
                    cursorColor: Colors.black,
                   decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Email Address:"),
                     suffix: Text("@gmail.com"),
                   ),
                  ),
                 ),
                
                  Container(
                alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  child: TextFormField(   
                     controller: _firstnamecontroller,
                     inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                     ],
                     validator:(value) {
                    if(value == null || value.isEmpty  )
                    {
                      return 'Enter Your Phone number';
                    }
                    if(value.length <= 6 || value.length < 11 )
                    {
                       return 'Please Phone no greater than 11';
                    }
                   if(value.endsWith('55'))
                   {
                    return 'Please Phone no not EndWith';
                   }
                    if(value.startsWith('44'))
                    {
                    return 'Please Phone no not Allow';
                    }
                  }, 
                    textAlign: TextAlign.center ,
                    autofocus: true,
                    maxLength: 11,
                    cursorColor: Colors.black,
                   decoration: InputDecoration(
                    prefixIconColor: Colors.blue,
                    border: OutlineInputBorder(),
                    label: Text("Enter Phone  Number:"),
                   errorStyle: TextStyle(color: const Color.fromARGB(255, 199, 162, 107))
                   ),
                  ),
                 ),

              Container(
                alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    textAlign: TextAlign.center ,
                    autofocus: true,
                    cursorColor: Colors.black,
                     maxLength: 8,
                   decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Password :"),
                    
                   suffixIcon:  IconButton(
                  icon:Icon(_isHidden ? Icons.visibility 
                  : Icons.ac_unit_rounded,),
                   onPressed: (){},
                   color: const Color.fromARGB(255, 64, 75, 236),
                   ),
               ),
               obscureText: _isHidden,
                   ),
                  ),
                 
                 
              
           
                
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                   children: [

               OutlinedButton(onPressed: (){}, 
                 child: Text('Login'),
                style: OutlinedButton.styleFrom(
                     // backgroundColor: Colors.blue,
                      foregroundColor: const Color.fromARGB(255, 70, 117, 9),
                       )),
                       


                     Container(
                        //margin: EdgeInsets.symmetric(horizontal: 90 ,vertical: 20),
                        child: ElevatedButton(
                         onPressed: (){
                          if(_formKey.currentState!.validate()){
                             ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Welcome to ' + _firstnamecontroller.text),
                              ),
                             );
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin(name: _firstnamecontroller.text,)));
                          }
                                    }, 
                          child: Text("Signup"),
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.black,
                          ),
                          ),
                       ),
                   ],
                 ),
                  ]
                ),
               // ]
              ),
          ),
          ),
      // ),
    );
  }



  Future <void> _selectdate() async {
  DateTime? _picked =  await showDatePicker(
  context: context,
  initialDate: DateTime.now(),
   firstDate: DateTime(2021), 
   lastDate: DateTime(2025),
 
);
if(_picked !=null){
  _DOB.text = _picked.toString().split(" ")[0];
}
   
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
  return Scaffold(
body: Center(
  child: Text("Home Page Data111"),
),
  );
  }
  
}
class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
  return Scaffold(
body: Center(
  child: Text("About Page Data1111"),
),
  );
  }}
  
    //  TextButton(onPressed: (){
                //                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                 
                //  }, child: Text("forgot"))
 String? validateEmail(String? value) {
  const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
  final regex = RegExp(pattern);

  return value!.isNotEmpty && !regex.hasMatch(value)
      ? 'Enter a valid email address'
      : null;
}


     // old code
     //  ListView(
//   //scrollDirection: Axis.vertical,
//   children: [
//    Container(
//     margin: EdgeInsets.all(10),
//      child: Row(
//       children: <Widget>[
//           Text("First name:"),
//           SizedBox(width: 40,),
//      Container(
//               child:Flexible(
//                child:TextField(
//                 cursorColor: Colors.black,
//                decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                ),
//                )
//               )
//      ),
//      SizedBox(width: 10,),
//       Text("Last name:"),
//           SizedBox(width: 40,),
//      Container(
//               child:Flexible(
//                child:TextField(
//                 cursorColor: Colors.black,
//                decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                ),
//                )
//               )
//      )          
//       ]
//        ),
//    ),
             
//       ]
//        ),
   