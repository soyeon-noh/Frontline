import 'package:flutter/material.dart';

class FrontlineCard extends StatelessWidget {
  const FrontlineCard({
    Key? key,
    required String this.date,
    required double this.opacity,
    required String this.frontline,
    required Color? this.dateColor,
    required Color? this.frontlineColor,
  }) : super(key: key);

  final date;
  final opacity;
  final frontline;
  final dateColor;
  final frontlineColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: 400,
      height: 180,
      decoration: BoxDecoration(
          // color: Colors.white54,
          color: Color.fromRGBO(255, 255, 255, opacity),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.8),
                offset: Offset(0, 4),
                blurRadius: 12,
                spreadRadius: 0)
          ]),
      child: Column(
        children: [
          Container(
            child:
                Text(date, style: TextStyle(fontSize: 18, color: dateColor)),
            margin: EdgeInsets.fromLTRB(2.0, 30.0, 0.0, 0.0),
          ),
          Container(
            child: Text(frontline,
                style: TextStyle(
                    fontSize: 28, color: frontlineColor, fontFamily: 'shilla')
                    ),
            margin: EdgeInsets.fromLTRB(2.0, 20.0, 0.0, 0.0),
          )
        ],
      ),
    );
  }
}
