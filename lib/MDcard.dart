import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myfirsapp/Constants.dart';
import 'package:myfirsapp/Naigationbar.dart';
import 'package:myfirsapp/Signin.dart';
import 'package:myfirsapp/Signup.dart';

class Mdcard extends StatefulWidget {
  const Mdcard({super.key});


  @override
  State<Mdcard> createState() => _MdcardState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
var Hometitle = ["My Report", "Appointment", "Pharmacy", "My History"];
var Homeicon = [
  Icons.report_gmailerrorred_outlined,
  Icons.calendar_today,
  Icons.local_pharmacy,
  Icons.history
];
var Homenav = [Signup(), Signin(name: "Test",), Signup(), Signup()];
var Additionaltitle = [
  "BMI",
  "BP",
  "Glucose Test",
  "Report Analysis",
  "Report Analysis"
];
var Additionalicon = [
  Icons.medical_services,
  Icons.bloodtype,
  Icons.group_work,
  Icons.report_gmailerrorred_outlined,
];

var Additionalnav = [Signup(), Signup(), Signin(name: "Test",), Signup()];

class _MdcardState extends State<Mdcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 161, 208, 230),
      appBar: AppBar(title: Text("Card"),
      
      ),
       body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        // color: Color(0xFF2196F3),
        child: ListView(
          children: [
            Container(
                child: CarouselSlider(
              options: CarouselOptions(autoPlay: true),
              items: imgList
                  .map((item) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                        
                          ),
                        child: Center(
                            child: Image.network(item,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width)),
                      ))
                  .toList(),
            )
            ),

            Container(
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  hintText: 'Search',
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 12.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(new Radius.circular(30.0)),
                  color: Colors.white),
              width: 250,
              height: 50,
              margin: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.02,
                  MediaQuery.of(context).size.height * 0.03,
                  MediaQuery.of(context).size.width * 0.02,
                  MediaQuery.of(context).size.height * 0.03),
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
            ),


            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: MediaQuery.of(context).size.width * 0.4,
                    crossAxisCount: 2
                    ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    // focusColor: Colors.green,
                    // borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homenav[index]),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.all(2),
                        child: containericon(context, Homeicon[index],
                            "${Hometitle[index]}", Colors.white)),
                  );
                }),

                
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  bottom: MediaQuery.of(context).size.height * 0.02),
              child: Text("Other Additional Tools",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                      )),
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount:Additionaltitle.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: MediaQuery.of(context).size.width * 0.3,
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Additionalnav[index]),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.all(2),
                        child: containericonsmall(
                            context,
                            Additionalicon[index],
                            Additionaltitle[index],
                            Colors.yellow)),
                  );
                }),
          ],
        ),
          
      
      )
    
      ),
   // bottomNavigationBar: Bottom()  
    );
  }
}

Widget containericon(context, iconname, icontext, backgroundcolor) {
  return Container(
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.08,
        left: MediaQuery.of(context).size.width * 0.05,
        bottom: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05),
    margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
    decoration: BoxDecoration(
      color: backgroundcolor,
      borderRadius: BorderRadius.all(
          Radius.circular(MediaQuery.of(context).size.width * 0.03)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    width: MediaQuery.of(context).size.width * 0.45,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconname,
          size: MediaQuery.of(context).size.width * 0.13,
          //color: Constants.mainColor,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Text(
            icontext,
            style: TextStyle(
                //color: Constants.mainColor,
                fontSize: MediaQuery.of(context).size.width * 0.04),
          ),
        )
      ],
    ),
  );
}

Widget containericonsmall(context, iconname, icontext, backgroundcolor) {
  return Container(
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.04,
        left: MediaQuery.of(context).size.width * 0.03, 
        bottom: MediaQuery.of(context).size.width * 0.01,
        right: MediaQuery.of(context).size.width * 0.03),
    margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
    decoration: BoxDecoration(
      color: backgroundcolor,
      borderRadius: BorderRadius.all(
          Radius.circular(MediaQuery.of(context).size.width * 0.03)),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 0, 30, 129).withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    // width: MediaQuery.of(context).size.width * 0.45,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconname,
          size: MediaQuery.of(context).size.width * 0.1,
         // color: Constants.mainColor,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Text(
            icontext,
            style: TextStyle(
              color: Constants.yellowAccent,
                fontSize: MediaQuery.of(context).size.width * 0.03),
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
  );
}
