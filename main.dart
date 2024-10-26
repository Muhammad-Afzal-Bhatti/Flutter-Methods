import "package:flutter/material.dart";
import "package:push_flutter/counter_widget.dart";

void main() {
  runApp(MaterialApp(
    home: Pagework(),
    debugShowCheckedModeBanner: false,
  ));
}

class Pagework extends StatelessWidget {
  const Pagework({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.black26,
              child: Center(
                child: Text(
                  "StatelessWidget",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),
                ),
              ),
            ),
            Counterview(),
            Container(
              height: 350,
              width: double.infinity,

              color: Colors.black26,
                  child: Center(
                    child: Text(
                    "StatelessWidget",
                    style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),
                                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
