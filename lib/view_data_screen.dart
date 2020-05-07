import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ViewDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var box = Hive.box('example_db');
    List<Map<dynamic, dynamic>> data = box.get('data');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hive View'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: data.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(16),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(data[index]['name'],style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),),
          ),
        ),
      ),
    );
  }
}
