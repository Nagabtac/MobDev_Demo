import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MobDev2"),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 5, 20, 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 0, 0),
            ),
            child: Column(
              children: [
                Text(
                  "First War Kinda Nervous",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Image.asset(
                  "assets/images/missile.jpg",
                  width: 800,           // Set image width // Maintain aspect ratio
                ),
                Row(spacing:10, children: [Text("360 no scope || "),Text("Victory Dance")],)
              ],
            ),
          ),
        ),
      ),
    ),
  );
}