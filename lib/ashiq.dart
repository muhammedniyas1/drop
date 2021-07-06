import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.chevron_left),
                    Center(
                        child: Text(
                          "STATS",
                          style: TextStyle(color: Colors.purple),
                        )),
                  ],
                ),
              ),
              Container(
                width: 320,
                // height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                padding:
                EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.purple),
                      child: Text(
                        "DAY",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      child: Text(
                        "week",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      child: Text(
                        "year",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: GridView.count(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 4,
                    crossAxisCount: 2,
                    children: [
                      Container(
                        height: 50,
                        color: Colors.purple,
                      ),
                      Container(
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 50,
                        color: Colors.green,
                        child: Column(
                          children: [Text("askja")],
                        ),
                      ),
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        color: Colors.black,
                      ),
                      Container(
                        color: Colors.deepOrangeAccent,
                      ),



                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}