// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:async';
import 'dart:convert';
import 'package:test_app/pages/cpu_list.dart';
import 'package:test_app/pages/pc_build_form.dart';
import 'package:test_app/pages/ram_list.dart';
import './pages/alt_cpu_list.dart';



var routes = <String, WidgetBuilder> {
  "/cpu_list": (BuildContext context) =>  CpuListScreen(),
  "/build_form": (BuildContext context) => PCBuildForm()
};


void main() => runApp(PMP());

void main2()  {

  String ramArray = '{ "RAM": [' + 
    '{"name":"Corsair Vengeance LPX", "subtitle": "16 GB", "price": "\$119},'+
    '{"name":"G. Skill Ripjaws V", "subtitle": "16 GB", "price": "\$99},' +
    '{"name":"G. Skill Trident Z RGB", "subtitle": "32 GB", "price": "\$189},' +
    '{"name":"G. Skill Aegis", "subtitle": "8 GB", "price": "\$79},' +
  ']}';

  // var ramObjJson = jsonDecode(ramArray)['RAM'] as List;
  // List<RAM> ramObjs = ramObjJson.map((ramJson) => RAM.fromJson(ramJson)).toList();
  // print(ramObjs);
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    routes: {
      '/CPUList': (context) => CpuListScreen()
    },
    debugShowCheckedModeBanner: false,
    home: CpuProductsScreen(),
  ));
}


class PMP extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple[900], 
        accentColor: Colors.blueAccent[900],
        fontFamily: 'Lato',
        ),
      routes: {
        '/CPUList': (context) => CpuListScreen()
      },
      debugShowCheckedModeBanner: false,
      home: CpuProductsScreen(),
    );
  }

}





class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Timer(const Duration(seconds: 100), onClose);
  }

  void onClose(){
      Navigator.push(context, CupertinoPageRoute(builder: (context) => MyApp()));
      // Navigator.push(context, route)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: <Widget>[
          Container(decoration: BoxDecoration(color: Colors.blueAccent),),
          const SizedBox(height: 250),
          RaisedButton(child: Text('Random words list'), onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => MyApp()));
          } ),
          const SizedBox(height: 50),
          RaisedButton(child: Text('Form'), onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => PCBuildForm()));
          } ),

          ],
        )
        
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}




class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override

  final _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    // return Text(wordPair.asPascalCase);

    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );

  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final List<Widget> divided = ListTile
            .divideTiles(
              context: context,
              tiles: tiles,
            )
            .toList();

          return Scaffold(         // Add 6 lines from here...
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );                       // ... to here.
        },
      ),
    );
  }

  Widget _buildSuggestions() {
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return _buildRow(_suggestions[index]);
      });
  }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite: Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if(alreadySaved) {
            _saved.remove(pair);
          }
          else{
            _saved.add(pair);
          }
        });
      },
    );
  }
}