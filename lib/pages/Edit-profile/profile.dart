import 'dart:io';

import 'package:example/pages/dashboard.dart/dashboard.dart';
import 'package:example/pages/Edit-profile/edit_profile.dart';
import 'package:example/pages/main_menu/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => profileState();
}

class profileState extends State<profile> {
  final _mybox = Hive.box('mybox');
  final _mybox2 = Hive.box('myboxsquad');
  final _mybox3 = Hive.box('myboxpushup');
  final _mybox5 = Hive.box('myboxcallorie');
  final _mybox4 = Hive.box('myboxsitup');
  File? imgFile;
  String? imgPath;
  //////dumbell cal///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  dynamic dumbelcal = 0;
  dynamic calculatorcal = 0;
  dynamic callorienum = 400;
  String dumbel1 = '';
  String count1 = '';
  String count2 = '';
  String count3 = '';
  String count4 = '';
  String count5 = '';
  String count6 = '';
  String count7 = '';
  String count8 = '';
  String count9 = '';
  String count10 = '';
  dynamic sumcountdumbel = 0;
  dynamic sum = 0;
  String dumbelcalsum = '';
  String squadcalsum = '';
  String situpcalsum = '';
  String pushupcalsum = '';

  //////////////////////////////////////////////////////////////percen
  String percencalall = '';
  String percendelete = '';
  dynamic percencall = 0;
  dynamic percencall2 = 0;
  dynamic percensurplus = 0;
  dynamic percensurpluscal = 0;

  void percencal() {
    percencalall = _mybox5.get(11);
    percendelete = _mybox5.get(999).toString();

    var percencalall1 = double.parse(percencalall);
    var percendelete1 = double.parse(percendelete);

    percencall = percencalall1 - percendelete1; ////call surplus
    percensurplus = (percendelete1 / percencalall1);

    if (percensurplus <= 1.0) {
      percensurpluscal = percensurplus;
    } else {
      percensurpluscal = 1.0;
    }

    if (percencall >= 0) {
      percencall2 = percencall;
    } else {
      percencall2 = 0;
    }

    _mybox5.put(1000, percencall2);
    _mybox5.put(1001, percensurpluscal);
  }

  void calsum() {
    dumbelcalsum = _mybox5.get(1) == null ? dumbelcalsum = '0' : _mybox5.get(1);
    squadcalsum = _mybox5.get(2) == null ? squadcalsum = '0' : _mybox5.get(2);
    situpcalsum = _mybox5.get(3) == null ? situpcalsum = '0' : _mybox5.get(3);
    pushupcalsum = _mybox5.get(4) == null ? pushupcalsum = '0' : _mybox5.get(4);

    var dumbelcalsum1 = double.parse(dumbelcalsum);
    var squadcalsum1 = double.parse(squadcalsum);
    var situpcalsum1 = double.parse(situpcalsum);
    var pushupcalsum1 = double.parse(pushupcalsum);

    sum = dumbelcalsum1 + squadcalsum1 + situpcalsum1 + pushupcalsum1;
    _mybox5.put(999, sum);
  }

  void calcallorie() {
    ///ฟังค์ชัน คำนวนแคลดัมเบล
    dumbel1 = _mybox5.get(111) == null ? dumbel1 = '0' : _mybox5.get(111);
    ;
    count1 = _mybox.get(12) == null ? count1 = '0' : _mybox.get(12);
    count2 = _mybox.get(22) == null ? count2 = '0' : _mybox.get(22);
    count3 = _mybox.get(32) == null ? count3 = '0' : _mybox.get(32);
    count4 = _mybox.get(42) == null ? count4 = '0' : _mybox.get(42);
    count5 = _mybox.get(52) == null ? count5 = '0' : _mybox.get(52);
    count6 = _mybox.get(62) == null ? count6 = '0' : _mybox.get(62);
    count7 = _mybox.get(72) == null ? count7 = '0' : _mybox.get(72);
    count8 = _mybox.get(82) == null ? count8 = '0' : _mybox.get(82);
    count9 = _mybox.get(92) == null ? count9 = '0' : _mybox.get(92);
    count10 = _mybox.get(102) == null ? count10 = '0' : _mybox.get(102);
    var dumbel = double.parse(dumbel1);
    var count = double.parse(count1);
    var count11 = double.parse(count2);
    var count22 = double.parse(count3);
    var count33 = double.parse(count4);
    var count44 = double.parse(count5);
    var count55 = double.parse(count6);
    var count66 = double.parse(count7);
    var count77 = double.parse(count8);
    var count88 = double.parse(count9);
    var count99 = double.parse(count10);
    sumcountdumbel = count +
        count11 +
        count22 +
        count33 +
        count44 +
        count55 +
        count66 +
        count77 +
        count88 +
        count99;

    dumbelcal = dumbel / callorienum;
    calculatorcal = dumbelcal * sumcountdumbel;
    _mybox5.put(1, '${calculatorcal.toStringAsFixed(2)}');
  }

  //////dumbell cal///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //////squad cal///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  dynamic squadcount = 0;
  dynamic squadper = 0.32;
  dynamic sumsquad = 0;
  String squadcount1 = '';
  String squadcount2 = '';
  String squadcount3 = '';
  String squadcount4 = '';
  String squadcount5 = '';
  String squadcount6 = '';
  String squadcount7 = '';
  String squadcount8 = '';
  String squadcount9 = '';
  String squadcount10 = '';
  void calsquad() {
    squadcount1 = _mybox2.get(12) == null ? squadcount1 = '0' : _mybox2.get(12);
    squadcount2 = _mybox2.get(22) == null ? squadcount2 = '0' : _mybox2.get(22);
    squadcount3 = _mybox2.get(32) == null ? squadcount3 = '0' : _mybox2.get(32);
    squadcount4 = _mybox2.get(42) == null ? squadcount4 = '0' : _mybox2.get(42);
    squadcount5 = _mybox2.get(52) == null ? squadcount5 = '0' : _mybox2.get(52);
    squadcount6 = _mybox2.get(62) == null ? squadcount6 = '0' : _mybox2.get(62);
    squadcount7 = _mybox2.get(72) == null ? squadcount7 = '0' : _mybox2.get(72);
    squadcount8 = _mybox2.get(82) == null ? squadcount8 = '0' : _mybox2.get(82);
    squadcount9 = _mybox2.get(92) == null ? squadcount9 = '0' : _mybox2.get(92);
    squadcount10 =
        _mybox2.get(102) == null ? squadcount10 = '0' : _mybox2.get(102);

    var squadcount11 = double.parse(squadcount1);
    var squadcount22 = double.parse(squadcount2);
    var squadcount33 = double.parse(squadcount3);
    var squadcount44 = double.parse(squadcount4);
    var squadcount55 = double.parse(squadcount5);
    var squadcount66 = double.parse(squadcount6);
    var squadcount77 = double.parse(squadcount7);
    var squadcount88 = double.parse(squadcount8);
    var squadcount99 = double.parse(squadcount9);
    var squadcount1010 = double.parse(squadcount10);

    squadcount = squadcount11 +
        squadcount22 +
        squadcount33 +
        squadcount44 +
        squadcount55 +
        squadcount66 +
        squadcount77 +
        squadcount88 +
        squadcount99 +
        squadcount1010;

    sumsquad = squadcount * squadper;
    _mybox5.put(2, '${sumsquad.toStringAsFixed(2)}');
  }

  //////squad cal///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///
  ///
  /////////squad cal///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  String pushupcount1 = '';
  String pushupcount2 = '';
  String pushupcount3 = '';
  String pushupcount4 = '';
  String pushupcount5 = '';
  String pushupcount6 = '';
  String pushupcount7 = '';
  String pushupcount8 = '';
  String pushupcount9 = '';
  String pushupcount10 = '';
  dynamic pushupcount = 0;
  void pushupcal() {
    pushupcount1 =
        _mybox3.get(12) == null ? pushupcount1 = '0' : _mybox3.get(12);
    pushupcount2 =
        _mybox3.get(22) == null ? pushupcount2 = '0' : _mybox3.get(22);
    pushupcount3 =
        _mybox3.get(32) == null ? pushupcount3 = '0' : _mybox3.get(32);
    pushupcount4 =
        _mybox3.get(42) == null ? pushupcount4 = '0' : _mybox3.get(42);
    pushupcount5 =
        _mybox3.get(52) == null ? pushupcount5 = '0' : _mybox3.get(52);
    pushupcount6 =
        _mybox3.get(62) == null ? pushupcount6 = '0' : _mybox3.get(62);
    pushupcount7 =
        _mybox3.get(72) == null ? pushupcount7 = '0' : _mybox3.get(72);
    pushupcount8 =
        _mybox3.get(82) == null ? pushupcount8 = '0' : _mybox3.get(82);
    pushupcount9 =
        _mybox3.get(92) == null ? pushupcount9 = '0' : _mybox3.get(92);
    pushupcount10 =
        _mybox3.get(102) == null ? pushupcount10 = '0' : _mybox2.get(102);

    var squadcount11 = double.parse(pushupcount1);
    var pushupcount22 = double.parse(pushupcount2);
    var pushupcount33 = double.parse(pushupcount3);
    var pushupcount44 = double.parse(pushupcount4);
    var pushupcount55 = double.parse(pushupcount5);
    var pushupcount66 = double.parse(pushupcount6);
    var pushupcount77 = double.parse(pushupcount7);
    var pushupcount88 = double.parse(pushupcount8);
    var pushupcount99 = double.parse(pushupcount9);
    var pushupcount1010 = double.parse(pushupcount10);

    pushupcount = squadcount11 +
        pushupcount22 +
        pushupcount33 +
        pushupcount44 +
        pushupcount55 +
        pushupcount66 +
        pushupcount77 +
        pushupcount88 +
        pushupcount99 +
        pushupcount1010;
    _mybox5.put(3, '${pushupcount.toStringAsFixed(2)}');
  }

  /////////squad cal///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////situp cal///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  String situpcount1 = '';
  String situpcount2 = '';
  String situpcount3 = '';
  String situpcount4 = '';
  String situpcount5 = '';
  String situpcount6 = '';
  String situpcount7 = '';
  String situpcount8 = '';
  String situpcount9 = '';
  String situpcount10 = '';
  dynamic situpcount = 0;
  dynamic situpcall = 0;
  void situp() {
    situpcount1 = _mybox4.get(12) == null ? situpcount1 = '0' : _mybox4.get(12);
    situpcount2 = _mybox4.get(22) == null ? situpcount2 = '0' : _mybox4.get(22);
    situpcount4 = _mybox4.get(32) == null ? situpcount3 = '0' : _mybox4.get(32);
    situpcount4 = _mybox4.get(42) == null ? situpcount4 = '0' : _mybox4.get(42);
    situpcount5 = _mybox4.get(52) == null ? situpcount5 = '0' : _mybox4.get(52);
    situpcount6 = _mybox4.get(62) == null ? situpcount6 = '0' : _mybox4.get(62);
    situpcount7 = _mybox4.get(72) == null ? situpcount7 = '0' : _mybox4.get(72);
    situpcount8 = _mybox4.get(82) == null ? situpcount8 = '0' : _mybox4.get(82);
    situpcount9 = _mybox4.get(92) == null ? situpcount9 = '0' : _mybox4.get(92);
    situpcount10 =
        _mybox4.get(102) == null ? situpcount10 = '0' : _mybox4.get(102);

    var situpcount11 = double.parse(situpcount1);
    var situpcount22 = double.parse(situpcount2);
    var situpcount33 = double.parse(situpcount3);
    var situpcount44 = double.parse(situpcount4);
    var situpcount55 = double.parse(situpcount5);
    var situpcount66 = double.parse(situpcount6);
    var situpcount77 = double.parse(situpcount7);
    var situpcount88 = double.parse(situpcount8);
    var situpcount99 = double.parse(situpcount9);
    var situpcount1010 = double.parse(situpcount10);

    situpcount = situpcount11 +
        situpcount22 +
        situpcount33 +
        situpcount44 +
        situpcount55 +
        situpcount66 +
        situpcount77 +
        situpcount88 +
        situpcount99 +
        situpcount1010;

    situpcall = situpcount * 0.3;
    _mybox5.put(4, '${situpcall.toStringAsFixed(2)}');
  }
  /////////situp cal///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getImg() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      await saveData(pickedImage.path);
      if (!mounted) {
        return;
      }
      setState(() {
        imgFile = File(pickedImage.path);
      });
    }
  }

  Future<void> saveData(String val) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString('path', val);
    await getData();
  }

  Future<void> getData() async {
    final sharedPref = await SharedPreferences.getInstance();
    if (!mounted) {
      return;
    }
    setState(() {
      imgPath = sharedPref.getString('path');
    });
  }

  Future<void> deleteData() async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.remove('path');
    await getData();
  }

  void readprofile() {
    _mybox.get(10);
    _mybox.get(20);
    _mybox.get(30);
    _mybox.get(40);
    _mybox.get(50);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 116, 116),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const menu_2(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        elevation: 0.0,
        title: Text('โปรไฟล์',
            style: TextStyle(fontSize: 18.0, color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 212, 212, 212),
                style: BorderStyle.solid,
                width: 1.0,
              ),
              image: DecorationImage(
                image: AssetImage("assets/imgbtn/w.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      TextButton(
                        onPressed: () {
                          getImg();
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (imgPath != null)
                              Container(
                                height: 120,
                                width: 150,
                                child: Image.file(
                                  File(imgPath!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 8.5,
                        right: 8,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: _mybox.get(10) == null
                      ? Text(
                          'ไม่พบชื่อผู้ใช้',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                          ),
                        )
                      : Text(
                          '${_mybox.get(10)}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                          ),
                        ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                  width: double.infinity,
                  height: 2,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  width: double.infinity,
                  height: 35,
                  color: Color.fromARGB(255, 58, 176, 255),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Edit_Profile(),
                        ),
                      );
                    },
                    child: Container(
                      child: Text(
                        'แก้ไข / บันทึก',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  width: double.infinity,
                  height: 35,
                  color: Color.fromARGB(255, 255, 181, 98),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const dashboard(),
                        ),
                      );

                      calcallorie();
                      pushupcal();
                      calsquad();
                      situp();
                      calsum();
                      percencal();
                    },
                    child: Container(
                      child: Text(
                        'เป้าหมายลด แคลอรี่',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  width: double.infinity,
                  height: 80,
                  color: Color.fromARGB(255, 255, 128, 128),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 150,
                          height: 23,
                          // color: Colors.blueAccent,
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage(
                                  'assets/img_icon/age.png',
                                ),
                                size: 24,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  "อายุ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 60,
                          height: 30,
                          // color: Colors.blueAccent,
                          child: _mybox.get(20) == null
                              ? Text(
                                  'ไม่พบอายุ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              : Text(
                                  '${_mybox.get(20)}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  width: double.infinity,
                  height: 80,
                  color: Color.fromARGB(255, 255, 128, 128),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 150,
                          height: 23,
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage(
                                  'assets/img_icon/weight.png',
                                ),
                                size: 24,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  "น้ำหนัก",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 130,
                          height: 30,
                          // color: Colors.blueAccent,
                          child: _mybox.get(30) == null
                              ? Text(
                                  'ไม่พบน้ำหนัก',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              : Text(
                                  '${_mybox.get(30)}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  width: double.infinity,
                  height: 80,
                  color: Color.fromARGB(255, 255, 128, 128),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 150,
                          height: 23,
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage(
                                  'assets/img_icon/height.png',
                                ),
                                size: 24,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  "ส่วนสูง",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 140,
                          height: 30,
                          // color: Colors.blueAccent,
                          child: _mybox.get(40) == null
                              ? Text(
                                  'ไม่พบส๋วนสูง',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              : Text(
                                  '${_mybox.get(40)}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  width: double.infinity,
                  height: 80,
                  color: Color.fromARGB(255, 255, 128, 128),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 150,
                          height: 23,
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage(
                                  'assets/img_icon/sex.png',
                                ),
                                size: 24,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  "เพศ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 120,
                          height: 30,
                          // color: Colors.blueAccent,
                          child: _mybox.get(50) == null
                              ? Text(
                                  'ไม่พบเพศ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              : Text(
                                  '${_mybox.get(50)}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  width: double.infinity,
                  height: 90,
                  color: Color.fromARGB(255, 255, 128, 128),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 300,
                          height: 20,
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage(
                                  'assets/img_icon/bmr.png',
                                ),
                                size: 24,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  "BMR พลังงานที่จำเป็นพื้นฐานในการใช้ชีวิตต่อวัน",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(left: 5, top: 10),
                          width: 140,
                          height: 20,
                          // color: Colors.blueAccent,
                          child: (_mybox.get(60) == null
                              ? Text(
                                  'ไม่พบจำนวน BMR',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                )
                              : Text(
                                  "${_mybox.get(60)}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                )),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10, bottom: 10),
                          width: 150,
                          height: 20,
                          // color: Colors.blueAccent,
                          child: Text(
                            'กิโลแคลอรี่',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
