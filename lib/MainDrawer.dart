import 'package:flutter/material.dart';
import 'package:frontline/MainBody.dart';
import 'package:frontline/MainDrawerItem.dart';
import 'package:frontline/frontline/OnsalHakair.dart';
import 'package:frontline/frontline/SealRock.dart';
import 'package:frontline/frontline/TheFieldsOfGlory.dart';
import 'main.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text(
                        "pvp 리스트",
                        style: TextStyle(color: Colors.white),
                      ))),
              decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.8)),
            ),
            MainDrawerItem(
                name: '오늘 전장',
                icon: Icons.home,
                onPressed: () => onItemPressed(context, index: 0)),
            MainDrawerItem(
                name: '봉인된 바위섬',
                icon: Icons.home,
                onPressed: () => onItemPressed(context, index: 1)),
            MainDrawerItem(
                name: '영광의 평원',
                icon: Icons.home,
                onPressed: () => onItemPressed(context, index: 2)),
            MainDrawerItem(
                name: '온살 하카이르',
                icon: Icons.home,
                onPressed: () => onItemPressed(context, index: 3)),
          ],
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyApp(bodyWidget: MainBody())));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyApp(bodyWidget: SealRock())));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyApp(bodyWidget: TheFieldsOfGlory())));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyApp(bodyWidget: OnsalHakair())));
        break;      
    }
  }
}
