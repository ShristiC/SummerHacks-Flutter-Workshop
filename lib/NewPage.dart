import 'package:flutter/material.dart';

// creating a new page
class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A new page",
        ),
      ),
      body: Container(
        child: Text(
          "Thanks for coming to the workshop,"
         "feel free to dm me or ask any questions!",
         textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: 30,
         ),

        ),
      ),
    );
  }
}