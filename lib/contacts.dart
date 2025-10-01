import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Text('Contact page'),
          ),
          Text('Check git add'),
          Text('Check git pull'), //fixed that bug check pls
          Text('Check git push'),
          Text('Check again git pull'),
        ],
      ),
    );
  }
}
