import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      iconSize: 30.0,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.home,
                  
                  // color: Colors.red,
                ),
                backgroundColor: Colors.blue,
                title: new Text(
                  "Home",
                  style: new TextStyle(
                    // color:Colors.black,
                  ),
                )),
            new BottomNavigationBarItem(
              backgroundColor: Colors.blue,
                icon: new Icon(
                  Icons.library_books,
                  // color:Colors.grey,
                ),
                title: new Text(
                  "News",
                  style: new TextStyle(
                  //  color:Colors.black,
                  ),
                )),
            new BottomNavigationBarItem(
              backgroundColor: Colors.blue,
                icon: new Icon(
                  Icons.star_border,
                  // color:Colors.grey,
                ),
                title: new Text(
                  "Watchlist",
                  style: new TextStyle(
                    // color:Colors.black,
                  ),
                )),
                new BottomNavigationBarItem(
                  backgroundColor: Colors.blue,
                icon: new Icon(
                  Icons.person_outline,
                  // color:Colors.grey,
                ),
                title: new Text(
                  "Profile",
                  style: new TextStyle(
                  //  color:Colors.black,
                  ),
                )
                ),
                
          ],
          onTap: (index){
            setState(() {
              _currentIndex= index;
            });
          },
         
        );
  }
}