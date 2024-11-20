import 'package:flutter/material.dart';
import 'package:myfirsapp/Signup.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
                // 0         // 1      //  2
var pagesnew = [Homepage(), AboutUS(), Setting(),AboutUS()];
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title  : Text('Bottom Navigation'),
     // bottom: TabBar(tabs: 
      // [
        
      //   Text("Bottom"),
      //   Text("Upper"),
      //   Text("Upper"),
      //   Text("Upper")
      // ]),
      ),
      body: Center(
       // child: Text("PAge 1"),
       child: pagesnew[_selectedItem],//0 
      ),

      bottomNavigationBar: BottomNavigationBar(

        // selectedItemColor: Colors.red,
       // unselectedItemColor: const Color.fromARGB(255, 59, 88, 255),
      backgroundColor: Colors.lightGreen,
        items: <BottomNavigationBarItem>
        [
        
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: "About US"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
           BottomNavigationBarItem(icon: Icon(Icons.settings),label: "LogOut"),
          

      ],

      currentIndex: _selectedItem, // 0 
      onTap: (value) {
        setState(() {
          print(value);
          _selectedItem = value; 
        });
      },
      ),
    
    //  bottomNavigationBar: BottomNavigationBar(
    // mouseCursor: MouseCursor.defer,
    // items: <BottomNavigationBarItem>[
    //   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
    //   BottomNavigationBarItem(icon: Icon(Icons.info),label: "About"),
    //   BottomNavigationBarItem(icon: Icon(Icons.cleaning_services),label: "Services"),
      
      
    // ],

    
    //     currentIndex: _selectedItem,
    //     selectedItemColor: const Color.fromARGB(255, 0, 140, 255),
    //     onTap: (SetValue){
    //     setState(() {
    //       _selectedItem=SetValue  ;
    //     });
    //     print(pages);
    //     },
      
    //   ),
       // backgroundColor: Colors.amber,
    );
  
    }
  }

  class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Home Page"),),
    );
  }
}

class AboutUS extends StatelessWidget {
  const AboutUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("AboutUS Page"),),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Setting Page",style: TextStyle(fontWeight: FontWeight.bold),),),
    );
  }
}