import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

int selectedIndex=1;
    List<Widget> widgetpages = [
    Text("data1"),
    Text("data2"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Homepage"),
      ),
      drawer: Drawer( ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontSize:   10),
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex= index ;
          });
      
        },
        items: [
        BottomNavigationBarItem(label: "widget One",icon:Icon(Icons.ac_unit)),
        BottomNavigationBarItem(label: "widget TOW",icon:Icon(Icons.ac_unit)),
      ]),
      body:Text("dddddddddddddddddddddd")

    );
  } 
}
