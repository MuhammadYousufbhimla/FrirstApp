
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:myfirsapp/Signin.dart';
import 'package:myfirsapp/Signup.dart';

class Curved extends StatefulWidget {
  const Curved({super.key});

  @override
  State<Curved> createState() => _CurvedState();
}
//int _page = 0;

GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
              //0        //1             //2      //3        // 4
var pages = [Signup(),Signin(name: ''),Signup(),AboutPage(),Signup()];
 

class _CurvedState extends State<Curved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          items: 
          [
            Icon(Icons.add, size: 30,color: Colors.green,shadows: [BoxShadow(color:
             Colors.black)],),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
         
            
          ],
          color: Colors.white,
          buttonBackgroundColor: const Color.fromARGB(255, 126, 75, 209),
          backgroundColor: const Color.fromARGB(240, 82, 123, 196),
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 20),
          height: 75,
       //   maxWidth: 5000,
          
          onTap: (index) {
            print(index);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => pages[index]));
          },
         // letIndexChange: (index) => true,
        ),

        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>
              [
                Text("0",style: TextStyle(fontSize: 140)),
               // Text(_page.toString(), style: TextStyle(fontSize: 160)),
                ElevatedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    // final CurvedNavigationBarState? navBarState =
                    //     _bottomNavigationKey.currentState;
                    // navBarState?.setPage(1);
                  },
                )
              ],
              
            ),
          ),
        )
        );
  }
  }