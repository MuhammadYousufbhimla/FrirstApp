import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key,required this.name});
  final String name;
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login ' + widget.name),
        backgroundColor: Colors.amber,
      ),
      

body: ListView(
      children: [
        Container(
          margin: EdgeInsets.all(05),
          child: Row(
            children: [
              Text("First name:"),
             SizedBox(width:MediaQuery.of(context).size.width* 0.02),
                Expanded(
                child: TextFormField(
                cursorColor: Colors.black,
                 decoration: InputDecoration(
                   border: OutlineInputBorder()
                 )
              )
              ),
               SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
               Text("Last name:"),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
              Expanded(
                child: TextFormField(
                cursorColor: Colors.black,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                 )
              )
              ),
            ],
          ),
        ),


        Container(
          margin: EdgeInsets.all(05),
          child: Row(
            children: [
              Text("First name:"),
             SizedBox(width:MediaQuery.of(context).size.width* 0.02),
                Expanded(
                child: TextFormField(
                cursorColor: Colors.black,
                 decoration: InputDecoration(
                   border: OutlineInputBorder()
                 )
              )
              ),
               SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
               Text("Last name:"),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
              Expanded(
                child: TextFormField(
                
                cursorColor: Colors.black,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                 )
              )
              ),
            ],
          ),
        ),


    Container(
          margin: EdgeInsets.all(05),
          child: Row(
            children: [
              Text("First name:"),
             SizedBox(width:MediaQuery.of(context).size.width* 0.02),
                Expanded(
                child: TextFormField(
                cursorColor: Colors.black,
                 decoration: InputDecoration(
                   border: OutlineInputBorder()
                 )
              )
              ),
               SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
               Text("Last name:"),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
              Expanded(
                child: TextFormField(
                cursorColor: Colors.black,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                 )
              )
              ),
            ],
          ),
        ),
        // Container(
        //   margin: EdgeInsets.all(05),
        //   child: Row(
        //     children: [
        //       Text("name:"),
        //       SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //         Expanded(
        //         child: TextFormField(
        //         cursorColor: Colors.black,
        //          decoration: InputDecoration(
        //            border: OutlineInputBorder()
        //          )
        //       )
        //       ),
        //        SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //       Text("last:"),
        //          SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //       Expanded(
        //         child: TextFormField(
        //         cursorColor: Colors.black,
        //          decoration: InputDecoration(
        //            border: OutlineInputBorder(),
        //          )
        //       )
        //       ),
        //     ],
        //   ),
        // ),
        // Container(
        //   margin: EdgeInsets.all(05),
        //   child: Row(
        //     children: [
        //       Text("name:"),
        //       SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //         Expanded(
        //         child: TextFormField(
        //         cursorColor: Colors.black,
        //          decoration: InputDecoration(
        //            border: OutlineInputBorder()
        //          )
        //       )
        //       ),
        //        SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //       Text("last:"),
        //          SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //       Expanded(
        //         child: TextFormField(
        //         cursorColor: Colors.black,
        //          decoration: InputDecoration(
        //            border: OutlineInputBorder(),
        //          )
        //       )
        //       ),
        //     ],
        //   ),
        // ),
        // Container(
        //   margin: EdgeInsets.all(05),
        //   child: Row(
        //     children: [
        //       Text("name:"),
        //       SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //         Expanded(
        //         child: TextFormField(
        //         cursorColor: Colors.black,
        //          decoration: InputDecoration(
        //            border: OutlineInputBorder()
        //          )
        //       )
        //       ),
        //        SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //       Text("last:"),
        //          SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //       Expanded(
        //         child: TextFormField(
        //         cursorColor: Colors.black,
        //          decoration: InputDecoration(
        //            border: OutlineInputBorder(),
        //          )
        //       )
        //       ),
        //     ],
        //   ),
        // ),
        // Container(
        //   margin: EdgeInsets.all(05),
        //   child: Row(
        //     children: [
        //       Text("name:"),
        //       SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //         Expanded(
        //         child: TextFormField(
        //         cursorColor: Colors.black,
        //          decoration: InputDecoration(
        //            border: OutlineInputBorder()
        //          )
        //       )
        //       ),
        //        SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //       Text("last:"),
        //          SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
        //       Expanded(
        //         child: TextFormField(
        //         cursorColor: Colors.black,
        //          decoration: InputDecoration(
        //            border: OutlineInputBorder(),
        //          )
        //       )
        //       ),
        //     ],
        //   ),
        // ),

      ],
    ),



























//   body: Stack(
//     children: [
//        Container(
//           margin: EdgeInsets.all(20 ),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: Color.fromARGB(255, 248, 245, 252),
//                image: DecorationImage(image: NetworkImage('assets/photo2.png')
//                ,fit: BoxFit.fill),
//             )
//        ),
// Container(
//   margin: EdgeInsets.all(40),
//   child: Expanded(
        
//                   child: TextFormField(
//                   cursorColor: Colors.black,
//                    decoration: InputDecoration(
//                     label: Text("First name:"),
//                      border: OutlineInputBorder(),
//                    )
//                   )
//   ),
// )
//     ],
//   ),






 ///  Row wise login 

    // body: ListView(
    //   children: [
    //     Container(
    //       margin: EdgeInsets.all(05),
    //       child: Row(
    //         children: [
    //           Text("name:"),
    //            SizedBox(width: 20,),
    //             Expanded(

    //             //fit: FlexFit.tight,
    //             child: TextFormField(
    //             cursorColor: Colors.black,
    //              decoration: InputDecoration(
    //                border: OutlineInputBorder(),
    //              )
    //           )
    //           ),
    //              SizedBox(width: 20,),
    //           Text("last:"),
    //           Expanded(
                
    //             //fit: FlexFit.loose,
    //             child: TextFormField(
    //             cursorColor: Colors.black,
    //              decoration: InputDecoration(
    //                border: OutlineInputBorder(),
    //              )
    //           )
    //           ),
    //         ],
    //       ),
    //     )
    //   ],
    // ),







   










      // body: Stack(
      //       //   fit: StackFit.passthrough,  
         
      //   children: [
      //     // Container(
      //     // margin: EdgeInsets.all(20 ),
      //     //   decoration: BoxDecoration(
      //     //     borderRadius: BorderRadius.circular(10),
      //     //     color: Color.fromARGB(255, 248, 245, 252),
      //     //      image: DecorationImage(image: NetworkImage('assets/photo2.png')
      //     //      ,fit: BoxFit.fill),
      //     //   )
      //     // ),
      //     // Positioned
      //     // (
      //     //   child: Container(
      //     //       margin: EdgeInsets.all(25),
      //     //          //margin: EdgeInsets.only(left: 30,right: 30,top: 20 ),
      //     //           child: TextField(
      //     //             obscureText: true,
      //     //             textAlign: TextAlign.center ,
      //     //             autofocus: true,
      //     //             cursorColor: Colors.black,
      //     //              maxLength: 8,
      //     //            decoration: InputDecoration(
      //     //             border: OutlineInputBorder(),
      //     //             label: Text("Password :"),
      //     //            ),
      //     //           ),
      //     //          ),
      //     // ),
      //   ],
      // ),
    );
  }

}