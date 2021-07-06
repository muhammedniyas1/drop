import 'dart:convert';
import 'package:api_one/stackwidget.dart';
import 'package:api_one/testapis/apis_integration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'ashiq.dart';
import 'model/listmodel.dart';
//my first commit


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:api_integration(),
    );
  }
}

class list_view extends StatefulWidget {
  @override
  _list_viewState createState() => _list_viewState();
}

class _list_viewState extends State<list_view> {

  List<listmodel> list=List<listmodel>();

  Future<listmodel> list_fetch() async{
    listmodel obj_listmodel;
    var url=Uri.parse("https://ecopen.info/prathibha/prisma/index.php/Data/get_notice_by_sectionID");
    var responce=await http.post(url,
    body: {
      "sectionID":"6",
      "classesID":"12"
    }
    );

if(responce.statusCode==200){

  print(responce.body);
  List<dynamic> listk = json.decode(responce.body);
  setState(() {
    list.clear();
    for(int i=0;i<listk.length;i++){
      listmodel k=listmodel.fromJson(listk[i]);
      list.add(k);
    }
  });


}else{
  print("erroe");

}

  }



  add()async{

    await list_fetch();

  }

  @override
  void initState() {
    add();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child:
              ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context,index){

                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(list[index].title),
                      Text(list[index].noticeID.toString())



                    ],
                  ),


                );
              })


              ,
            )



          ],
        ),
      ),

    );
  }
}
