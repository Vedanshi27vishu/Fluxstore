import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String name = "tiwari";

  final int age = 20;
  bool count = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(50.0), 
          child: Opacity(
            opacity: 0.6,
            child: AppBar(
              title: Text('Custom AppBar Height'),
              backgroundColor: Colors.blueAccent,
            ),
          )),
      body: Column(children: [
        Container(child: Text("aikansh $name and my age is $age")),
        Material(
        
              color:Colors.amber,
            
           child: InkWell(
            onTap: () async{
              setState(() {
                count = !count;
              });
            },
            child: Container(
              height:  50,
              width:  50,
              child:count?
              
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),   
                  )
              :Text("change colour"),    
            ),
           
          ),
        ),
        SizedBox(height: 20,),
        
      ]),
      drawer: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: Opacity(
          opacity: 0.5,
          child: Drawer(),
        ),
      ),
    );
  }
}
