import 'package:flutter/material.dart';
import 'package:frontline/frontline/FrontlinePageContent.dart';

class HiddenGorge extends StatelessWidget {
  const HiddenGorge({Key? key}) : super(key: key);

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
                  "영광의 평원",
                  style: TextStyle(color: Colors.red,fontSize: 50, fontFamily: 'Shilla'),
                )
            ),

            Column(
              children: [
                FrontlinePageContent(
                  title: "승리 조건",
                  infoList: [
                    ["점령 점수 + 킬 점수 + 얼음 점수", "1600점"],
                  ],
                ),
                FrontlinePageContent(
                  title:"점령 점수",
                  infoList: [
                    ["1개","(2점/3초)"],
                    ["2개","(4점/3초)"],
                    ["3개","(8점/3초)"]
                  ],
                ),
                FrontlinePageContent(
                  title:"킬 점수",
                  infoList: [
                    ["우리 총사", "+10점"],
                    ["적 총사", "-5점"]
                  ],
                ),
                FrontlinePageContent(
                  title:"얼음 점수",
                  infoList: [
                    ["큰 얼음","300점"],
                    ["작은 얼음","70점"],
                  ],
                ),
              ],
            ),
          ],
        )
    );
  }
}
