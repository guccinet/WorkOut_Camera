import 'package:example/pages/main_menu/main_menu.dart';
import 'package:example/pages/playback%20history/page_history/1.dart';
import 'package:example/pages/playback%20history/page_history/2.dart';
import 'package:example/pages/playback%20history/page_history/3.dart';
import 'package:example/pages/playback%20history/page_history/4.dart';
import 'package:flutter/material.dart';

class History_01 extends StatefulWidget {
  const History_01({Key? key}) : super(key: key);

  @override
  State<History_01> createState() => _History_01State();
}

class _History_01State extends State<History_01> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imgbtn/w.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return menu_2();
                  },
                ),
              );
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          backgroundColor: Color.fromARGB(255, 255, 181, 98),
          title: Text(
            "ประวัติการเล่น",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.red,
            unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(),
            overlayColor: WidgetStateColor.resolveWith(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Color.fromARGB(255, 255, 255, 255);
                }
                if (states.contains(WidgetState.focused)) {
                  return Colors.orange;
                } else if (states.contains(WidgetState.hovered)) {
                  return Colors.pinkAccent;
                }
                return Colors.transparent;
              },
            ),
            tabs: <Widget>[
              Tab(
                icon: Image.asset(
                  "assets/imgbtn/workout.png",
                  height: 30,
                  fit: BoxFit.cover,
                ),
                text: "ยกดัมเบล",
              ),
              Tab(
                icon: Image.asset(
                  "assets/imgbtn/squat.png",
                  height: 30,
                  fit: BoxFit.cover,
                ),
                text: "สควอช จัมพ์",
              ),
              Tab(
                icon: Image.asset(
                  "assets/imgbtn/push-up.png",
                  height: 30,
                  fit: BoxFit.cover,
                ),
                text: "วิดพื้น",
              ),
              Tab(
                icon: Image.asset(
                  "assets/imgbtn/situp.png",
                  height: 30,
                  fit: BoxFit.cover,
                ),
                text: "ซิทอัพ",
              )
            ],
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            His1(),
            His2(),
            His3(),
            His4(),
          ],
        ),
      ),
    );
  }
}
