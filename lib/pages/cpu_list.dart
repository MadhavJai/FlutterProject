import 'package:flutter/material.dart';

class CpuListScreen extends StatefulWidget {
  @override
  _CpuListScreenState createState() => new _CpuListScreenState();
}

class _CpuListScreenState extends State<CpuListScreen> {
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('CPU List'),
      ),
    );
  }
}