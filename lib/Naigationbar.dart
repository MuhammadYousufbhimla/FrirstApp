import 'package:flutter/material.dart';


class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  var _pages=[ Home(), AboutUS(), Servies()  ];
  
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar"),
      ),

      body: Center(
       // child: Text("HG4RHG4HDG4"),
           child: _pages[_selectedItem],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreen,
        //selectedItemColor: const Color.fromARGB(255, 146, 104, 36),
       // selectedFontSize: 4,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue),
            label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: Colors.blue),label: "About US"),
          BottomNavigationBarItem(icon: Icon(Icons.home_repair_service_outlined,color: Colors.blue,),label: "Services")
        ],
        
        currentIndex: _selectedItem,// 0
        onTap: (value){
          setState(() {
            _selectedItem=value;
            print(_selectedItem);
          });
        },
        ),
    );
  
  }

}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Home Page");
  }
}


class AboutUS extends StatelessWidget {
  const AboutUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("About Page");
  }
}

class Servies extends StatelessWidget {
  const Servies({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Service Page");
  }
}