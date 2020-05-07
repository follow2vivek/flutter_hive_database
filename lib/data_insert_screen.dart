import 'package:flutter/material.dart';
import 'package:flutter_hive_database_example/data.dart';
import 'package:flutter_hive_database_example/view_data_screen.dart';
import 'package:hive/hive.dart';

class DataInsertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hive Insert'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: MaterialButton(
                onPressed: () async{
                  var box = Hive.box('example_db');
                  await box.delete('data');
                  box.put('data', dataToInsert);
                },
                color: Colors.blue,
                child: Text('INSERT DATA'),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewDataScreen(),
                    ),
                  );
                },
                color: Colors.blue,
                child: Text('VIEW DATA'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
