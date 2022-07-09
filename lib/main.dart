import 'package:flutter/material.dart';
import 'package:frontline/frontline/SealRock.dart';
// import 'package:intl/date_symbol_data_http_request.dart';
import 'MainBody.dart';
import 'frontline/SealRock.dart';

// firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 조매 26
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
            textTheme: TextTheme(
              bodyText1: TextStyle(color: Color.fromRGBO(215, 18, 18, 1.0), fontSize: 28.0),
              bodyText2: TextStyle(
                  color: Colors.white, fontSize: 18.0, fontFamily: 'Noto'),
            )),
        // home: MainScaffold(),
        home: Scaffold(
          backgroundColor: Colors.black87,

          appBar: AppBar(
            title: Text(
              "전장 가자",
              style: TextStyle(fontSize: 24),
            ),
            // leading: IconButton(
            //     icon: Icon(Icons.menu),
            //     onPressed: ()=> print("menu")),
            // backgroundColor: Colors.transparent,
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
            elevation: 0, // 그림자 농도
            centerTitle: true,
          ),
          // extendBodyBehindAppBar: true,
          // body: MainBody(),
          body: MainBody(),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text("pvp 리스트")
                    )
                  ),
                  decoration: BoxDecoration(color: Colors.black54),
                ),
                ListTile(
                    leading: Icon(Icons.home),
                    iconColor: Colors.grey[850],
                    title: Text('오늘 전장',style: Theme.of(context).textTheme.bodyText1),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SealRock()));
                    }
                ),                
                ListTile(
                    leading: Icon(Icons.keyboard_arrow_right_rounded),
                    iconColor: Colors.grey[850],
                    title: Text('봉인된 바위섬', style: Theme.of(context).textTheme.bodyText1),
                    onTap: () {
                      // Navigator.pop(context, MaterialPageRoute(builder: (context)=>SealRock()));
                    }
                ),
                ListTile(
                    leading: Icon(Icons.keyboard_arrow_right_rounded),
                    iconColor: Colors.grey[850],
                    title: Text('영광의 평원', style: Theme.of(context).textTheme.bodyText1),
                    onTap: () {
                      // Navigator.pop(context);
                    }
                ),
                ListTile(
                    leading: Icon(Icons.keyboard_arrow_right_rounded),
                    iconColor: Colors.grey[850],
                    title: Text('온살 하카이르', style: Theme.of(context).textTheme.bodyText1),
                    
                    onTap: () {
                      // Navigator.pop(context);
                    }
                ),                                
              ],
            ),
          ),
        ));
  }
}
