import 'package:flutter/material.dart';
import '../classes/mysql.dart';

class SqlDataPage extends StatefulWidget {
  @override
  _SqlDataPageState createState() => _SqlDataPageState();
}

class _SqlDataPageState extends State<SqlDataPage> {
  List strings = [];

  var db = new Mysql();

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => getData(context));
  }

  void getData(BuildContext context) {
    // if (this.strings.length > 0) {
    //   this.strings.clear();
    // }

    // db.getConnection().then((connection) {
    //   print('getConnection()');

    //   String sql = 'SELECT `Name` FROM `Categories`';
    //   connection.query(sql).then((results) => {
    //         for (var row in results)
    //           {
    //             setState(() {
    //               strings.add(row.toString());
    //             })
    //           }
    //       });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: ListView(
          children:
              // HomeButton(
              //   buttonText: 'Print',
              //   onClickFunction: () {
              //     setState(() {
              //       getData(context);
              //     });
              //   },
              // ),
              strings.map((str) => Text(str)).toList(),
        ),
      ),
    );
  }
}
