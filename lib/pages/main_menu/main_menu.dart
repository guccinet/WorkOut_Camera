
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:example/pages/Edit-profile/profile.dart';
import 'package:example/pages/dashboard.dart/dashboard.dart';
import 'package:example/pages/playback%20history/history.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../ui/export.dart';

class menu_2 extends StatefulWidget {
  const menu_2({Key? key}) : super(key: key);

  @override
  _iPhone_screen_1State createState() => _iPhone_screen_1State();
}

bool showme = false;
final _mybox5 = Hive.box('myboxcallorie');

void close() {
  showme = false;
}

class _iPhone_screen_1State extends State<menu_2> {
  @override
  Widget build(BuildContext context) {
    if (_mybox5.get(1001) == 1.0) {
      showme = true;
    } else {
      showme = false;
    }
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0)),
            image: DecorationImage(
              image: AssetImage("assets/imgbtn/w.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          "Exercise with AI",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leadingWidth: 130,
        leading: Container(
          margin: EdgeInsets.only(left: 30),
          padding: EdgeInsets.all(6),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/imgbtn/logo2.png'),
            radius: 50,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Container(
              child: IconButton(
                icon: Icon(
                  Icons.settings_backup_restore,
                  size: 30,
                ),
                color: Color.fromARGB(255, 0, 0, 0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const History_01(),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              child: IconButton(
                icon: const Icon(Icons.person),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const profile(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
        titleSpacing: 00.0,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80),
          ),
        ),
        elevation: 0.00,
      ),
      backgroundColor: Color.fromARGB(255, 248, 116, 116),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'Exercise',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 42.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 32.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.height - 165.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/imgbtn/w.jpg"), fit: BoxFit.cover),
              color: Color.fromARGB(255, 249, 242, 237),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80.0),
              ),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 200.0,
                    child: ListView(
                      children: [
                        Visibility(
                            visible: showme,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(75.0),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Color.fromARGB(255, 255, 0, 0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          'ครบจำนวนแคลลอรี่ที่ต้องการแล้ว',
                                          textAlign: TextAlign.center,
                                          textStyle: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255)),
                                          speed:
                                              const Duration(milliseconds: 50),
                                        ),
                                      ],
                                      totalRepeatCount: 100,
                                      pause: const Duration(milliseconds: 1000),
                                      displayFullTextOnTap: true,
                                      stopPauseOnTap: true,
                                    ),
                                  ),
                                  Container(
                                      width: 60,
                                      height: 30,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                        ),
                                        onPressed: () {
                                          setState(
                                            () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      dashboard(),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Text(
                                          'ตกลง',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ))
                                ],
                              ),
                            )),
                        _build1('assets/imgbtn/workout.png', 'ยกดัมเบล'),
                        _build2('assets/imgbtn/squat.png', 'สควอช จัมพ์'),
                        _build3('assets/imgbtn/push-up.png', 'วิดพื้น'),
                        _build4('assets/imgbtn/situp.png', 'ซิทอัพ')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

// post1------------------------post1-----------------------------------
  Widget _build1(String imgPath1, String Name1) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => post1(imgPath1: imgPath1, Name1: Name1),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                      tag: imgPath1,
                      child: Image(
                          image: AssetImage(imgPath1),
                          fit: BoxFit.cover,
                          height: 100.0,
                          width: 100.0)),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Name1,
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.touch_app_outlined),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          post1(imgPath1: imgPath1, Name1: Name1),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }

// post2------------------------post2-----------------------------------
  Widget _build2(String imgPath2, String Name2) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => post2(heroTag2: imgPath2, Name2: Name2),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                      tag: imgPath2,
                      child: Image(
                          image: AssetImage(imgPath2),
                          fit: BoxFit.cover,
                          height: 100.0,
                          width: 100.0)),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Name2,
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.touch_app_outlined),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        post2(heroTag2: imgPath2, Name2: Name2),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

// post3------------------------post3-----------------------------------
  Widget _build3(String imgPath3, String Name3) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => post3(heroTag3: imgPath3, Name3: Name3),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                      tag: imgPath3,
                      child: Image(
                          image: AssetImage(imgPath3),
                          fit: BoxFit.cover,
                          height: 100.0,
                          width: 100.0)),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Name3,
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.touch_app_outlined),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        post3(heroTag3: imgPath3, Name3: Name3),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

// post4------------------------post4-----------------------------------
  Widget _build4(String imgPath4, String Name4) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => post4(heroTag4: imgPath4, Name4: Name4),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                      tag: imgPath4,
                      child: Image(
                          image: AssetImage(imgPath4),
                          fit: BoxFit.cover,
                          height: 100.0,
                          width: 100.0)),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Name4,
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.touch_app_outlined),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        post4(heroTag4: imgPath4, Name4: Name4),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
