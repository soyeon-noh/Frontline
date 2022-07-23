import 'package:flutter/material.dart';

import 'FrontlinePageContent.dart';

class FrontlinePage extends StatelessWidget {
  const FrontlinePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
        child: Column(
          children: [
            // title
            Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                child:
                Text(
                  "봉인된 바위섬",
                  style: TextStyle(color: Colors.red,fontSize: 50, fontFamily: 'Shilla'),
                )
            ),

            Column(
              children: [
                FrontlinePageContent(
                  title: "승리 조건",
                  firstList: ["B","80점","(2점/3초)"],
                  secondList: null,
                  thirdList: null,
                ),
                FrontlinePageContent(
                  title:"점령 점수",
                  firstList: ["B","80점","(2점/3초)"],
                  secondList: ["A","120점","(3점/3초)"],
                  thirdList: ["S","160점","(4점/3초)"],
                ),
                FrontlinePageContent(
                  title:"킬 점수",
                  firstList: ["우리 총사", "+5점"],
                  secondList: ["적 총사", "-5점"],
                  thirdList: null,
                ),
              ],
            ),
          ],
        )
    );
  }
}
