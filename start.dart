import 'package:flutter/material.dart';
import 'package:push_flutter/startend.dart';


void main() {
  runApp(MaterialApp(
    routes: {"/": (context) => Mystate(), "/new": (context) => NewD()},
    debugShowCheckedModeBanner: false,
  ));
}

class Mystate extends StatefulWidget {
  const Mystate({super.key});

  @override
  State<Mystate> createState() => _MystateState();
}

class _MystateState extends State<Mystate> {
  int counterChange = 0;
  @override
  void initState() {
    super.initState();
    print("I always called first");
  }

  @override
  void dispose() {
    super.dispose();
    print("I called when screen changed");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("The widget is removed");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Hot restart to see the result");
    /* As part of the rebuild, the didChangeDependencies() method gets triggered because the widget
   is being re-inserted into the widget tree, and Flutter checks if any inherited dependencies (like MediaQuery, Theme, etc.) have changed.*/
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("Increment set state changed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("SideBar"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/new");
                  /* i use replacement means page widget removed permenently so 
              deactivate is called and also dispose*/
                  counterChange = 1;
                },
                child: Text("Next page")),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counterChange += 1;
                });
              },
              child: Text("$counterChange"),
            ),
          ],
        ),
      ),
    );
  }
}
