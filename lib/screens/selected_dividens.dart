import 'package:flutter/material.dart';
import 'package:hellofirst/common/bottom_navigation_bar.dart';
import 'package:custom_switch_button/custom_switch_button.dart';

class SelectedDividens extends StatefulWidget {
  @override
  _SelectedDividensState createState() => _SelectedDividensState();
}

class _SelectedDividensState extends State<SelectedDividens> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        leading: new IconButton(
            // color:Color(0xff324492),
            color: Colors.black,
            iconSize: 35,
            icon: new Icon(Icons.more_vert),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      " BSE ",
                      style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      child: Center(
                        child: CustomSwitchButton(
                          backgroundColor: Colors.grey,
                          unCheckedColor: Colors.black,
                          animationDuration: Duration(milliseconds: 400),
                          checkedColor: Colors.green,
                          checked: isChecked,
                        ),
                      ),
                    ),
                    Text(
                      " NSE ",
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      body:
       Container(
         child: Column(
           children: <Widget>[
             SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
             Text('  Innovation MP Tech ', style: TextStyle(fontSize: 25, color: Colors.grey),),
            //  Text('5789.20', style: TextStyle(fontSize: 18),),

            //  Text('Dividens Yields', style: TextStyle(fontSize: 18),),
             

              ],
            
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                  Text('5789.20', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Text('^ +4.00 (5.28 %)', style: TextStyle(fontSize: 15, color: Colors.green),),
                  new IconButton(icon: new Icon(Icons.star_border, size: 40.0,), onPressed: (){}),
                  
               ],

             ),
              Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: <Widget>[
                  Text('Dividens-Yields ', style: TextStyle(fontSize: 18),),
                  new IconButton(icon: new Icon(Icons.keyboard_arrow_down), onPressed: (){}),
                  
               ],

             ),
          Container(
            margin: EdgeInsets.all(15.0),
            width: MediaQuery.of(context).size.width-30,
            height: 150,
            color: Colors.white,
           
child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Row(//1st
      children: <Widget>[
        Text('Dividens-Yields ', style: TextStyle(fontSize: 18, color: Colors.black),),
        
      ],
    ),
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Dividend rate ', style: TextStyle(fontSize: 15,color: Colors.grey),),
        Text('0.77', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
        Text('Dividend Period', style: TextStyle(fontSize: 15,color: Colors.grey),),
        Text('NA', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        
      ],
    ),
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('  Announced date', style: TextStyle(fontSize: 15,color: Colors.grey),),
        Text('2020-02-07', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        Text('Period short', style: TextStyle(fontSize: 15,color: Colors.grey),),
        Text('3 M', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        
      ],
    ),
     Row(
      
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Yield', style: TextStyle(fontSize: 15,color: Colors.grey),),
        Text('1.03 %', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        Text('Payment date', style: TextStyle(fontSize: 15,color: Colors.grey),),
        Text('2020-02-07', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        
      ],
    ),
  ],
),
          ),
           ],
           
         ),
        
         
        
       ),
       
      
    );
  }
}
