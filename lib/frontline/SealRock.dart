import 'package:flutter/material.dart';

class SealRock extends StatelessWidget {
  const SealRock ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //         begin: Alignment.topRight,
      //         end: Alignment.bottomLeft,
      //         colors: [
      //           Colors.black,
      //           Colors.white,
      //         ],
      //       )
      // ),
      color: Colors.black,
      child: Column(
          children: [
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
                Container(

                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                        child: Text("승리 조건", style: Theme.of(context).textTheme.bodyText1)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          
                          children: [
                            Text("점령 점수 + 킬 점수", style: Theme.of(context).textTheme.bodyText2),
                            Text("800점", style: Theme.of(context).textTheme.bodyText2),
                          ],
                        ),             
                      ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),

                  child: Column(
                    children: [
                      
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                        child: Text("점령 점수", style: Theme.of(context).textTheme.bodyText1)),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(

                          children: [
                            Text("B", style: Theme.of(context).textTheme.bodyText2),
                            Text("80점", style: Theme.of(context).textTheme.bodyText2),
                            Text("(2점/3초)", style: Theme.of(context).textTheme.bodyText2)
                          ],
                        ),
                        Column(
                          children: [
                            Text("A", style: Theme.of(context).textTheme.bodyText2),
                            Text("120점", style: Theme.of(context).textTheme.bodyText2),
                            Text("(3점/3초)", style: Theme.of(context).textTheme.bodyText2)
                          ],
                        ),
                        Column(
                          children: [
                            Text("S", style: Theme.of(context).textTheme.bodyText2),
                            Text("160점", style: Theme.of(context).textTheme.bodyText2),
                            Text("(4점/3초)", style: Theme.of(context).textTheme.bodyText2)
                          ],
                        ),                   
                      ],
                      ),
                    ],
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                        child: Text("킬 점수", style: Theme.of(context).textTheme.bodyText1)),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("우리 총사", style: Theme.of(context).textTheme.bodyText2),
                            Text("+ 5점", style: Theme.of(context).textTheme.bodyText2),
                          ],
                        ),
                        Column(
                          children: [
                            Text("적 총사", style: Theme.of(context).textTheme.bodyText2),
                            Text("- 5점", style: Theme.of(context).textTheme.bodyText2),
                          ],
                        ),                
                      ],
                      ),
                    ],
                  ),
                ),
              ],
            ), 
          ],
        )
    );
  }
}
