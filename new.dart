import 'package:flutter/material.dart';

class NewD extends StatelessWidget {
  const NewD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("SideBar"),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Container(
                margin: EdgeInsets.only(right: 100),
                width: 30,
                height: 30,
                child: CircleAvatar(
                  radius: 40,
                  child: ClipOval(
                    child: Image.asset(
                      "images/afzal.png",
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/nature.png"),
                      fit: BoxFit.cover)),
            ),
            ListTile(
                  title: Text("Computer"),
                  leading: Icon(Icons.computer),
                  onTap: ()=> null,
                ),
                  ListTile(
                  title: Text("Laptop"),
                  leading: Icon(Icons.laptop),
                  onTap: ()=> null,

                ),
                  ListTile(
                  title: Text("Mobile"),
                  leading: Icon(Icons.mobile_friendly),
                  onTap: ()=> null,

                ),
          ],
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Text("Go To CurrentPage")),
                
          ],
        ),
      ),
    );
  }
}
