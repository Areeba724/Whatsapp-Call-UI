import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    var arr=['66666778977','77777777777','34987896789','78979897809'];
    var arrname=['Incoming','Outgoing','Incoming','Outgoing'];
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child: Container(
                height: 130,
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.phone_callback, color: Colors.grey,),
                      title: Text(
                          arr[index], style: TextStyle(color: Colors.green)),
                      subtitle: Text(
                          arrname[index], style: TextStyle(color: Colors.orange)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Dail", style: TextStyle(color: Colors.blue,
                                fontWeight: FontWeight.bold),),
                            SizedBox(width: 10,),
                            Text("Call History", style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 10,
            );
          },
          itemCount: arr.length,
      ),
    );
  }
}