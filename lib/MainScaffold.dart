import 'package:flutter/material.dart';
import 'FrontlineCard.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';


class MainScaffold extends StatelessWidget {
  const MainScaffold({Key? key}) : super(key: key);

  String getDate(int num){
    // 기본 언어 초기화
    initializeDateFormatting();
    var now = new DateTime.now();

    var newDate = new DateTime(now.year, now.month, now.day + num);

    String formatDate = DateFormat('MM/dd (E)', 'ko').format(newDate);
    return formatDate;
  }

  String getFrontline(){

    var date = getDate(0);
    var list = ['봉인된 바위섬\n(제압전)', '영광의 평원\n(쇄빙전)', '온살 하카이르\n(계절끝 합전)', '숨겨진 보루\n(기공전)'];

    if(get.)
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      appBar: AppBar(
        title: Text("전장 가자", style: TextStyle(fontSize: 24),),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: ()=> print("menu")),
        // backgroundColor: Colors.transparent,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
        elevation: 0, // 그림자 농도
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FrontlineCard(date: getDate(-1), opacity: 0.5, frontline: getFrontline()),
                  FrontlineCard(date: getDate(0), opacity: 0.8, frontline: getFrontline()),
                  FrontlineCard(date: getDate(1), opacity: 0.5, frontline: getFrontline())
                ],
              ),
            ),
    );
  }
}


