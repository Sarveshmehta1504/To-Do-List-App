import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  List<String> myitemslist = [];
  final TextEditingController txt1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
            appBar: AppBar(
              title: Text(
                  "To Do list",
              ),
              backgroundColor: Colors.blue,
            ),
            body: Column(
              children: <Widget>[
                TextField(
                  controller: txt1,
                  onSubmitted: (text) {
                    myitemslist.add(text);
                    txt1.clear();
                    setState(() {});
                  },
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: myitemslist.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(myitemslist[index]);
                        }))
              ],
            )
        )
    );
  }
}
