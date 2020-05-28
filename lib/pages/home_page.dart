import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/home_page_list.dart';


class PMPHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project PMP'),
      ),
      body: HomePageList(),
    );
  }
}




