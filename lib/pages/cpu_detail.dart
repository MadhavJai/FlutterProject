import 'package:flutter/material.dart';

class CPUDetailScreen extends StatelessWidget {

final String title;

CPUDetailScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ) ,
    );
  }
}