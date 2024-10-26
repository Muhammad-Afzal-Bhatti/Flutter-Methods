import 'package:flutter/material.dart';

class Counterview extends StatefulWidget {
  const Counterview({super.key});

  @override
  State<Counterview> createState() => _CounterviewState();
}

class _CounterviewState extends State<Counterview> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(  
            height: 100,
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$counter"),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: Text("Add"))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
