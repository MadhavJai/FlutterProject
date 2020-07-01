import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_app/pages/pc_build_form.dart';

class HomePageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(

          // color: Colors.redAccent,
          padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
          child: ListView(
            children: 
              <Widget>[
                _card('Navigating to PC Builder', _tile('Build', Icons.build, 0, context), 0),
                _card('Navigating to Browse page', _tile('Browse ', Icons.search, 1, context), 1),
                _card('Navigating to settings', _tile('Settings', Icons.settings, 2, context), 2),

              ],
      
          ),

      );

  }

  Card _card(String selectDebugMsg, ListTile optionTile, int navCode) => Card(

    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7.5)
    ),
    child: 
      InkWell(
        splashColor: Colors.blueAccent.withAlpha(70),
        onTap: () {
          print(selectDebugMsg);
        },
        child: optionTile,
      ),
  );

  ListTile _tile(String title, IconData icon, int navCode, BuildContext context) => ListTile(

    title:  Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        
      ),
    ),
    trailing: Icon(
      icon,
      color: Colors.blue[500],  
    ),
    onTap: () {

      switch(navCode) {
        case 0: {
          Navigator.push(context, CupertinoPageRoute(builder: (context) => PCBuildForm()));
        }
        break;
        case 1: {
              
        }
        break;
        case 2: {
              
        }
        break;
      }

    },

  );

}
