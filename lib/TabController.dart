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

  late TabController myController;
  @override
  void initState() {
    super.initState();
    myController = new TabController(length: 4 , vsync: this,initialIndex: 3);
  }
  GlobalKey<ScaffoldState> scaffoldKey=new GlobalKey<ScaffoldState>();
    final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Homepage"),
        bottom: TabBar(
          controller: myController,
          tabs: [
          Tab(child:Text("data"),
          icon: Icon(Icons.ac_unit_outlined),
          ),
          Tab(child:Text("data2"),
          icon: Icon(Icons.ac_unit_outlined),
          ),
          Tab(child:Text("data3"),
          icon: Icon(Icons.ac_unit_outlined),
          ),
          Tab(child:Text("data4"),
          icon: Icon(Icons.ac_unit_outlined),
          ),
        ]),
      ),
      drawer: Drawer( ),
      body:  TabBarView(
        controller: myController,
        children: [
        Container(
          width: double.infinity,
          child: Text("conatainter1"),
          color: Colors.red,
          ),
        Container(
          width: double.infinity,
          child: Text("conatainter2"),
          color: Colors.red,
          ),
        Container(
          width: double.infinity,
          child: Text("conatainter3"),
          color: Colors.red,
          ),
        Container(
          width: double.infinity,
          child: Text("conatainter4"),
          color: Colors.red,
          ),
        Container(
          width: double.infinity,
          child: Text("conatainter1"),
          color: Colors.red,
          ),
          ]
        ),
       
      
    );
  }
}
