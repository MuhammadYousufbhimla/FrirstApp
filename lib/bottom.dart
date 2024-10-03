import 'package:flutter/material.dart';
import 'package:myfirsapp/Signin.dart';
import 'package:myfirsapp/Signup.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
   var pages = [Home(),AboutPage(),AboutPage()];
  int _selectedItem=0;
  @override
  //   void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedItem = index;
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title  : Text('Bottom Navigation'),
      ),
      body: Center(
        child:pages[_selectedItem],
       
      ),
     bottomNavigationBar: BottomNavigationBar(
    mouseCursor: MouseCursor.defer,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
      BottomNavigationBarItem(icon: Icon(Icons.info),label: "About"),
      BottomNavigationBarItem(icon: Icon(Icons.cleaning_services),label: "Services"),
      
      
    ],

    
        currentIndex: _selectedItem,
        selectedItemColor: const Color.fromARGB(255, 0, 140, 255),
        onTap: (SetValue){
        setState(() {
          _selectedItem=SetValue  ;
        });
        print(pages);
        },
      
      ),
       // backgroundColor: Colors.amber,
    );
  
    }
  }