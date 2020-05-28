import 'package:flutter/material.dart';

class HomePageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(

          // color: Colors.redAccent,
          padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
          child: ListView(
            children: 
              <Widget>[
                Card(
                  elevation: 2,
                  child: 
                  InkWell(
                    splashColor: Colors.blueAccent.withAlpha(70),
                    onTap: () {
                      print('Navigating to PC Builder');
                    },
                    child: _tile('Build ', Icons.build, 0),
                  )
                ),

                Card(
                  elevation: 2,
                  child: 
                  InkWell(
                    splashColor: Colors.blueAccent.withAlpha(70),
                    onTap: () {
                      print('Navigating to Browse page');
                    },
                    child: _tile('Browse builds', Icons.search, 1),
                  )
                ),

                Card(
                  elevation: 2,
                  child: 
                  InkWell(
                    splashColor: Colors.blueAccent.withAlpha(70),
                    onTap: () {
                      print('Navigating to settings');
                    },
                    child: _tile('Settings', Icons.settings, 2),
                  )
                ),

              // _tile('Browse builds', Icons.search, 1),
              // _tile('Settings', Icons.settings, 2),
              ],
      
          ),

      );

  }

  ListTile _tile(String title, IconData icon, int navCode) => ListTile(

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

  );

}
