import 'dart:async';
import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../../ui/export.dart';
import '../../ui/teachable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

class camera_2 extends StatefulWidget {
  final String Num_Set1;
  final String Num_Set_1;

  camera_2(this.Num_Set1, this.Num_Set_1);

  @override
  _camera_1State createState() => _camera_1State();
}

class _camera_1State extends State<camera_2> {
  dynamic sum = 0;
  String dumbelcalsum = '';
  String squadcalsum = '';
  String situpcalsum = '';
  String pushupcalsum = '';

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

  void writedata() {
    if (_mybox2.get(12) == null) {
      valuecount = 12;
      time = 13;
      valuegetsetcount = 101;
    } else if (_mybox2.get(22) == null) {
      valuecount = 22;
      time = 23;
      valuegetsetcount = 201;
    } else if (_mybox2.get(32) == null) {
      valuecount = 32;
      time = 33;
      valuegetsetcount = 301;
    } else if (_mybox2.get(42) == null) {
      valuecount = 42;
      time = 43;
      valuegetsetcount = 401;
    } else if (_mybox2.get(52) == null) {
      valuecount = 52;
      time = 53;
      valuegetsetcount = 501;
    } else if (_mybox2.get(62) == null) {
      valuecount = 62;
      time = 63;
      valuegetsetcount = 601;
    } else if (_mybox2.get(72) == null) {
      valuecount = 72;
      time = 73;
      valuegetsetcount = 701;
    } else {
      valuecount = 12;
      time = 13;
      valuegetsetcount = 101;
      _mybox2.delete(22);
      _mybox2.delete(23);
      _mybox2.delete(201);
      _mybox2.delete(32);
      _mybox2.delete(33);
      _mybox2.delete(301);
      _mybox2.delete(42);
      _mybox2.delete(43);
      _mybox2.delete(401);
      _mybox2.delete(52);
      _mybox2.delete(53);
      _mybox2.delete(501);
      _mybox2.delete(62);
      _mybox2.delete(63);
      _mybox2.delete(601);
      _mybox2.delete(72);
      _mybox2.delete(73);
      _mybox2.delete(701);
    }

    _mybox2.put(valuegetsetcount, '$getsetcount');
    _mybox2.put(valuecount, '$showcount');
    _mybox2.put(time, (DateFormat('dd-MM-yyyy KK:mm').format(DateTime.now())));
    Navigator.of(context).pop();
  }

  void hide() {
    setState(() {
      isVisible = !isVisible; // class hide
    });
  }

  void startcounter() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (stop == 1) {
          if (countdown > -1) {
            //countdown
            setState(() {
              countdown--;
            });
          } else {
            timer.cancel();
          }
          if (countdown == -1) {
            hide;
            if (countdowntime == true) {
              hide();
              countdowntime = false;
            }
          }
        }
      });
    });
  }

  final player = AudioPlayer();
  final playercount = AudioPlayer();
  final playercountfinsih = AudioPlayer();
  void audiocountdown() {
    player.play(AssetSource('audio/countdown.mp3'));
  }

  void audiocountdownfinish() {
    player.play(AssetSource('audio/finish.mp3'));
  }

  void counteraudio() {
    playercount.play(AssetSource('audio/beep.mp3'));
  }

  void counteraudiofinish() {
    playercountfinsih.play(AssetSource('audio/countfinish.mp3'));
  }

  void popup() {
    showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: Text('ครบจำนวนเซตแล้ว'),
          content: Text('เล่นไป $showcount ครั้ง $getsetcount เซต'),
          actions: <Widget>[
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  writedata();
                  calsquad();
                  calsum();
                  percencal();
                  show = false;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return menu_2();
                      },
                    ),
                  );
                });
              },
              // onPressed: writedata,
              child: Text(
                'บันทึก',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  int time = 0;
  int valuegetsetcount = 0;
  int valuecount = 0;
  int stop = 0;
  bool isVisible = true;
  bool countdowntime = true;
  int countdown = 5;
  String pose1 = "";
  String pose2 = "";
  double count = 0;
  int counter = 0;
  String txt = "";
  int getsetcount = 0;
  bool loading = true;
  int showset = 0;
  int showcount = 0;
  final _mybox2 = Hive.box('myboxsquad');
  final _mybox5 = Hive.box('myboxcallorie');
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 181, 98),
        title: Center(
          child: Text(
            "สควอช จัมพ์",
            textAlign: TextAlign.center,
          ),
        ),
        actions: <Widget>[
          TextButton(
            // style: style,
            onPressed: () {},
            child: const Text(''),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            show = false;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => menu_2(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      ),
      // appBar: AppBar(
      //     backgroundColor: Color.fromARGB(255, 255, 181, 98),
      //     title: Text("สควอช จัมพ์")),
      body: show
          ? Stack(
              children: [
                Container(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Teachable(
                            path: "pose/indexsquad.html",
                            results: (res) {
                              if (loading == true) {
                                EasyLoading.dismiss();
                                loading = false;
                              }

                              var resp1 = jsonDecode(res);
                              var resp2 = jsonDecode(res);

                              setState(() {
                                pose1 =
                                    (resp1['up'] * 100.0).toStringAsFixed(0);
                                pose2 =
                                    (resp2['down'] * 100.0).toStringAsFixed(0);
                                var test = int.parse(pose1);
                                var test2 = int.parse(pose2);
                                var getset = int.parse(widget.Num_Set1);
                                var getset2 = int.parse(widget.Num_Set_1);
                                var finishset = int.parse(widget.Num_Set1);
                                getsetcount = getset;
                                getset = getset * getset2;

                                if (test == 0) {
                                  if (test2 == 100) {
                                    // function hide
                                    if (stop == 0) {
                                      if (countdowntime == true) {
                                        stop = stop + 1;
                                        startcounter();
                                      }
                                    }
                                  }
                                }

                                if (countdown == 4) {
                                  //function audio countdown
                                  audiocountdown();
                                } else if (countdown == 3) {
                                  audiocountdown();
                                } else if (countdown == 2) {
                                  audiocountdown();
                                } else if (countdown == 1) {
                                  audiocountdown();
                                } else if (countdown == 0) {
                                  audiocountdownfinish();
                                } else {
                                  player.stop();
                                }

                                if (getset == getset2) {
                                  getsetcount;
                                }

                                if (countdown == -1) {
                                  if (test >= 95) {
                                    if (counter == 0) {
                                      count = count + 0.5;
                                      counter = 1;
                                    }
                                  } else if (test <= 5) {
                                    if (counter == 1) {
                                      count = count + 0.5;
                                      counteraudio();
                                      if (count == getset2) {
                                        showset = showset + 1;
                                        showcount = getset;
                                      }
                                      if (count > getset2) {
                                        count = 1;
                                      }
                                      if (showset == finishset) {
                                        txt = 'ครบ${getsetcount.toInt()}เซต';
                                        popup();
                                        counteraudiofinish();
                                        counter = 2;
                                      } else {
                                        counter = 0;
                                      }
                                    }
                                  }
                                }
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 10),
                          width: 100,
                          height: 100,
                          decoration: ShapeDecoration(
                            color: Colors.red[300],
                            shape: CircleBorder(),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "เล่นไป",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "$showset",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "เซต",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Visibility(
                    visible: isVisible,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Color.fromARGB(255, 255, 98, 98),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(15),
                      child: Text(
                        countdown == 5
                            ? 'กรุณาสวอช ลง และ ขึ้น'
                            : countdown == 0
                                ? 'เริ่มได้'
                                : countdown.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                ),
                //-----------------------เซต-------------เซต------เซต--------------------------
                Align(
                  alignment: Alignment(-0.6, 0.72),
                  child: Container(
                    width: 85,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Colors.red[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Center(
                          child: Text(
                            '${widget.Num_Set1} เซต',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //--------------ครั้ง----------ครั้ง---------------ครั้ง-------------------------------
                Align(
                  alignment: Alignment(0.6, 0.72),
                  child: Container(
                    width: 85,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Colors.red[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Center(
                          child: Text(
                            '${widget.Num_Set_1} ครั้ง',
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //------------------------------------------0--------------------------
                Align(
                  alignment: Alignment(-0.70, 0.9),
                  child: Container(
                    width: 135,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Colors.red[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '  ขึ้น  ${pose1}',
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //----------------------------------------------------------------------
                Align(
                  alignment: Alignment(0.49, 0.94),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.red[300],
                      shape: CircleBorder(),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${count.toInt()}',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //----------------------------------------------------------------------
                Align(
                  alignment: Alignment(0.7, 0.9),
                  child: Container(
                    width: 135,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Colors.red[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '${pose2}  ลง  ',
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //----------------------------------------------------------------------
              ],
            )
          : Container(),
    );
  }
}
