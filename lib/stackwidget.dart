import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class stack extends StatefulWidget {
  @override
  _stackState createState() => _stackState();
}

class _stackState extends State<stack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
Center(
  child: Stack(
    children: [
      Container(
        height: 250,
        width: 250,
        color: Colors.blue,
        child: Center(child: Text("hello")),
      ),

      Positioned(child: Text("name"),top: 0,right: 20,),
      Positioned(child: Text("nasme"),top: 70,right: 70,),
      Positioned(child: Text("nasme"),bottom: 200,top: 200,),


      //Align(child: Text("alighn"),alignment: Alignment.bottomLeft,)
    ],
  ),
)
          ],
        ),
      ),
    );
  }
}
