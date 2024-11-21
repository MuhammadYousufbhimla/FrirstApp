import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;
import 'package:myfirsapp/class.dart';

Future<List<DataItem>> fetchData() async {
  final jsonResponse = await rootBundle.rootBundle.loadString('assets/sample.json');
  final List<dynamic> data = json.decode(jsonResponse);

  return data.map((jsonItem) => DataItem.fromJson(jsonItem)).toList();
}




class JsondataSample extends StatefulWidget {
  @override
  State<JsondataSample> createState() => _JsondataSampleState();
}

class _JsondataSampleState extends State<JsondataSample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter JSON ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Data with FutureBuilder'),
      ),
      body: FutureBuilder<List<DataItem>>(
        future: fetchData(), // Ye method data fetch karega
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data found'));
          } else {
            // ListView ko render karna
            final dataItems = snapshot.data!;
            return ListView.builder(
              itemCount: dataItems.length,
              itemBuilder: (context, index) {
                final item = dataItems[index];//0 //1//2
                return ListTile(
                  leading: Icon(Icons.import_contacts),
                  //leading: Image(image: NetworkImage(imgList[index]),fit: BoxFit.cover,),
                  title: Text(item.name),
                  subtitle: Text('Age: ${item.age}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
