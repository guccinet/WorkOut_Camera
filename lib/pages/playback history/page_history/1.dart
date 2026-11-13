import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class His1 extends StatefulWidget {
  const His1({Key? key}) : super(key: key);

  @override
  State<His1> createState() => _His1State();
}

final _mybox = Hive.box('mybox');
bool show1 = true;
bool show2 = true;
bool show3 = true;
bool show4 = true;
bool show5 = true;
bool show6 = true;
bool show7 = true;
bool show8 = true;
bool show9 = true;
bool show10 = true;
bool show11 = true;
bool show12 = true;
bool show13 = true;
bool show14 = true;

class _His1State extends State<His1> {
  @override
  Widget build(BuildContext context) {
    ///////////////////////////////
    if (_mybox.get(13) == null) {
      show1 = false;
    } else {
      show1 = true;
    }
    if (_mybox.get(23) == null) {
      show2 = false;
    } else {
      show2 = true;
    }
    if (_mybox.get(33) == null) {
      show3 = false;
    } else {
      show3 = true;
    }
    if (_mybox.get(43) == null) {
      show4 = false;
    } else {
      show4 = true;
    }
    if (_mybox.get(53) == null) {
      show5 = false;
    } else {
      show5 = true;
    }
    if (_mybox.get(63) == null) {
      show6 = false;
    } else {
      show6 = true;
    }
    if (_mybox.get(73) == null) {
      show7 = false;
    } else {
      show7 = true;
    }
    if (_mybox.get(83) == null) {
      show8 = false;
    } else {
      show8 = true;
    }
    if (_mybox.get(93) == null) {
      show9 = false;
    } else {
      show9 = true;
    }
    if (_mybox.get(103) == null) {
      show10 = false;
    } else {
      show10 = true;
    }
    if (_mybox.get(113) == null) {
      show11 = false;
    } else {
      show11 = true;
    }
    if (_mybox.get(123) == null) {
      show12 = false;
    } else {
      show12 = true;
    }
    if (_mybox.get(133) == null) {
      show13 = false;
    } else {
      show13 = true;
    }
    if (_mybox.get(143) == null) {
      show14 = false;
    } else {
      show14 = true;
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/imgbtn/w.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          // -------------1------------1--------------------------------------1----------------------------1--------

          show1
              ? Visibility(
                  visible: show1,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(13)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(101)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(12)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          // ------------2-----------------------2-----------------------------------------------2-----------------
          show2
              ? Visibility(
                  visible: show2,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(23)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(201)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(22)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          // --------------3------------------------3----------------------------------------------3----------------
          show3
              ? Visibility(
                  visible: show3,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(33)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(301)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(32)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          // --------------4------------------------4----------------------------------------------4----------------
          show4
              ? Visibility(
                  visible: show4,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(43)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(401)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(42)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          // --------------5------------------------5----------------------------------------------5----------------
          show5
              ? Visibility(
                  visible: show5,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(53)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(501)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(52)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          // --------------6------------------------6----------------------------------------------6----------------
          show6
              ? Visibility(
                  visible: show6,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(63)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(601)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(62)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          // --------------7------------------------7----------------------------------------------7----------------
          show7
              ? Visibility(
                  visible: show7,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(73)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(701)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(72)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          show8
              ? Visibility(
                  visible: show8,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(83)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(801)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(82)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          show9
              ? Visibility(
                  visible: show9,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(93)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(901)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(92)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          show10
              ? Visibility(
                  visible: show10,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(103)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(1001)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(102)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          show11
              ? Visibility(
                  visible: show11,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(113)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(111)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(112)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          show12
              ? Visibility(
                  visible: show12,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(123)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(121)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(122)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          show13
              ? Visibility(
                  visible: show13,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(133)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(131)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(132)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          show14
              ? Visibility(
                  visible: show14,
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 40,
                    color: Color.fromARGB(255, 248, 116, 116),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('${_mybox.get(143)}'),
                        ),
                        Container(
                          child: Text('${_mybox.get(141)} เซต'),
                        ),
                        Container(
                          child: Text('${_mybox.get(142)} ครั้ง'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
