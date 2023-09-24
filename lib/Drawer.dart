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

class _MyHomePageState extends State<MyHomePage> {
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
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children:[
           UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.red,
            child: Text("YAY"),),
            accountEmail: Text("data@gmail.com"),
            accountName: Text("data"),
            ),
            ListTile(title: Text("Home PAGE "),
            leading: Icon(Icons.home),onTap: (){},),
            ListTile(title: Text("Home PAGE "),
            leading: Icon(Icons.help),onTap: (){},),
            ListTile(title: Text("Home PAGE "),
            leading: Icon(Icons.help_center_outlined),onTap: (){},),
            ListTile(title: Text("Home PAGE "),
            leading: Icon(Icons.home),onTap: (){},)
          ]
        ),
      ),
      body:  Container(
            child:  ElevatedButton(
          onPressed: (){scaffoldKey.currentState?.openDrawer();},
          child: Text("press"),),
          
          ),
      
    );
  }
}
