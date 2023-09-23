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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
             showDialog(context: context, builder: (context){
              return AlertDialog(
                titlePadding: EdgeInsets.only(top: 20 ,left: 20),
                title: Text("Title"),
                content: Text("data data datadata"),
                contentPadding: EdgeInsets.all(10),
                contentTextStyle: TextStyle(fontSize: 20,color: Colors.red),
              );

             });
            },
            child: const Text("Press Here"),
          ),
        ],
      ),
    );
  }
}
