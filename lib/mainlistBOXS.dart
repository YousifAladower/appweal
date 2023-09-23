import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> scaffoldKey=new GlobalKey<ScaffoldState>();
  var selectedValute ;

bool ye=false;
bool su=false;
bool sa=false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key:scaffoldKey,
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          
          Checkbox(value:ye , onChanged: (val){
            setState(() {
              ye = val!;
              if(ye)
              {
                sa=true;
              }
            });
          }),
          Checkbox(value:sa , onChanged: (val){
            setState(() {
              sa = val!;
            });
          }),
          Checkbox(value:su , onChanged: (val){
            setState(() {
              su = val!;
            });
          }),
          Center(
            
            child: Container(
              color: Colors.blue, 
              child: DropdownButton(
                onTap: (){
                  print("tabed");
                },
                //dropdownColor: Colors.green,
                underline: Divider( thickness: 0,),
                hint: Text("اختار البلاد"),
                items: ["Yemen","USA","UKA"]
                .map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedValute=value!;
                  });
                  
                },
                value:selectedValute ,
                ),
            ),
          ),
        ],
      )
    );
  }
}
