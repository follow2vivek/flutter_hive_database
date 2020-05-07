import 'package:flutter/material.dart';
import 'package:flutter_hive_database_example/data_insert_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('example_db');
  runApp(
    MaterialApp(
      home: DataInsertScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ),
  );
}
