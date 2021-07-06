import 'package:api_one/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class drop_model {
  String _k;
  String _j;

  drop_model(this._k, this._j);

  String get j => _j;

  set j(String value) {
    _j = value;
  }

  String get k => _k;

  set k(String value) {
    _k = value;
  }
}

class api_integration extends StatefulWidget {
  @override
  _api_integrationState createState() => _api_integrationState();
}

class _api_integrationState extends State<api_integration> {
  List<drop_model> j = new List<drop_model>();

  void add() {
    j.add(new drop_model("item1", "1"));
    j.add(new drop_model("item2", "2"));
    j.add(new drop_model("item3", "4"));
    j.add(new drop_model("item4", "4"));
    j.add(new drop_model("item5", "5"));
    j.add(new drop_model("item6", "6"));
    j.add(new drop_model("item7", "7"));
  }

  List<DropdownMenuItem<drop_model>> list_d_menu_item;
  drop_model obj_drop;

  List<DropdownMenuItem<drop_model>> builddrpdn(List k) {
    List<DropdownMenuItem<drop_model>> inner_list = List();

    for (drop_model obj_drop in k) {
      inner_list.add(DropdownMenuItem(
        child: Text(obj_drop._j),
        value: obj_drop,
      ));
    }

    return inner_list;
  }

  Future<model> api_calling() async {
    model md_obj;
    var url = Uri.parse(
        "https://run.mocky.io/v3/0626b41e-a0b6-4585-bd48-e6f7f6a011f3");

    var responce = await http.get(url);
    if (responce.statusCode == 200) {
      print(responce.body);
    }
  }

  api_calling_() async {
    await api_calling();
  }

  @override
  void initState() {
    add();
    list_d_menu_item=builddrpdn(j);
    obj_drop=list_d_menu_item[0].value;
    api_calling_();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

            DropdownButton<drop_model>(
              value:obj_drop ,
              items: list_d_menu_item,
            onChanged: (value) {
              setState(() {
                obj_drop = value;
              });
            }),






          ],
        ),
      ),
    );
  }
}
