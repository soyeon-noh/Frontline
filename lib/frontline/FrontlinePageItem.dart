import 'package:flutter/material.dart';

class FrontlinePageItem extends StatelessWidget {
  const FrontlinePageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
