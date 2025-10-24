import 'package:flutter/material.dart';

import 'package:my_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 18, 4, 56),
          Color.fromARGB(255, 0, 3, 17),
        ),
      ),
    ),
  );
}
