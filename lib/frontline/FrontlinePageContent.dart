import 'package:flutter/material.dart';

import 'FrontlinePageContentItem.dart';

class FrontlinePageContent extends StatelessWidget {
  const FrontlinePageContent(
      {
        Key? key,
        required this.title,
        required this.infoList,
      }
      ) : super(key: key);

  final String title;
  final List infoList;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
              child: Text(title, style: Theme.of(context).textTheme.bodyText1)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for(int i=0; i<infoList.length; i++)
                FrontlinePageContentItem(
                  textList: infoList[i],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
