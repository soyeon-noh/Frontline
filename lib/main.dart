import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_http_request.dart';
import 'MainScaffold.dart';

void main() {


  runApp(const MyApp());
}

// stless
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // fontFamily: 'EF_Diary',
        fontFamily: 'Shilla',
      ),
      home: MainScaffold(),
    );
  }
}
