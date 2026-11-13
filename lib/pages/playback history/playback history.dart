import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../ui/export.dart';

class history_1 extends StatefulWidget {
  const history_1({Key? key}) : super(key: key);

  @override
  _history_1State createState() => _history_1State();
}

class _history_1State extends State<history_1> {
  final _mybox = Hive.box('mybox');
  final _mybox2 = Hive.box('myboxsquad');
  final _mybox3 = Hive.box('myboxpushup');
  final _mybox4 = Hive.box('myboxsitup');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ประวัติการเล่น"),
        backgroundColor: Color.fromARGB(255, 248, 116, 116),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const menu_2()),
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage("assets/imgbtn/w.jpg"), fit: BoxFit.cover),
          // ),
          height: MediaQuery.of(context).size.height - 0.0,
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  // --------------ยกดัมเบล------------------------ยกดัมเบล---------------------------ยกดัมเบล----------
                  Container(
                    // color: Colors.amber,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Text(
                      'ยกดัมเบล',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 400.0,
                        width: double.infinity,
                        // color: Color.fromARGB(255, 248, 116, 116),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 255, 181, 98),
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Color.fromARGB(255, 249, 242, 237),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: ListView(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("1"),
                                    Container(
                                      child: _mybox.get(13) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox.get(13)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(101) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(101)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(12) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(12)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox.delete(13);
                                        _mybox.delete(101);
                                        _mybox.delete(12);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("2"),
                                    Container(
                                      child: _mybox.get(23) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox.get(23)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(201) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(201)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(22) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(22)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox.delete(23);
                                        _mybox.delete(201);
                                        _mybox.delete(22);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("3"),
                                    Container(
                                      child: _mybox.get(33) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox.get(33)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(301) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(301)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(32) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(32)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox.delete(33);
                                        _mybox.delete(301);
                                        _mybox.delete(32);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("4"),
                                    Container(
                                      child: _mybox.get(43) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox.get(43)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(401) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(401)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(42) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(42)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox.delete(43);
                                        _mybox.delete(401);
                                        _mybox.delete(42);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("5"),
                                    Container(
                                      child: _mybox.get(53) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox.get(53)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(501) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(501)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(52) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(52)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox.delete(53);
                                        _mybox.delete(501);
                                        _mybox.delete(52);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("6"),
                                    Container(
                                      child: _mybox.get(63) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox.get(63)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(601) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(601)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(62) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(62)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox.delete(63);
                                        _mybox.delete(61);
                                        _mybox.delete(62);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("7"),
                                    Container(
                                      child: _mybox.get(73) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox.get(73)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(701) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(701)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(72) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox.get(72)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox.delete(73);
                                        _mybox.delete(701);
                                        _mybox.delete(72);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
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
                  ),
                  // ----------------สควอช จัมพ์----------------สควอช จัมพ์------------------------สควอช จัมพ์-----------------------------------------------
                  Container(
                    // color: Colors.amber,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Text(
                      'สควอช จัมพ์',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 400.0,
                        width: double.infinity,
                        // color: Color.fromARGB(255, 248, 116, 116),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 255, 181, 98),
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Color.fromARGB(255, 249, 242, 237),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: ListView(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("1"),
                                    Container(
                                      child: _mybox2.get(13) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox2.get(13)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(101) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(101)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(12) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(12)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox2.delete(13);
                                        _mybox2.delete(101);
                                        _mybox2.delete(12);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("2"),
                                    Container(
                                      child: _mybox2.get(23) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox2.get(23)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(201) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(201)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(22) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(22)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox2.delete(23);
                                        _mybox2.delete(201);
                                        _mybox2.delete(22);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("3"),
                                    Container(
                                      child: _mybox2.get(33) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox2.get(33)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(301) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(301)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(32) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(32)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox2.delete(33);
                                        _mybox2.delete(301);
                                        _mybox2.delete(32);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("4"),
                                    Container(
                                      child: _mybox2.get(43) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox2.get(43)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(401) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(401)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(42) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(42)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox2.delete(43);
                                        _mybox2.delete(401);
                                        _mybox2.delete(42);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("5"),
                                    Container(
                                      child: _mybox2.get(53) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox2.get(53)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(501) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(501)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(52) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(52)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox2.delete(53);
                                        _mybox2.delete(501);
                                        _mybox2.delete(52);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("6"),
                                    Container(
                                      child: _mybox2.get(63) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox2.get(63)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(601) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(601)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(62) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(62)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox2.delete(63);
                                        _mybox2.delete(61);
                                        _mybox2.delete(62);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("7"),
                                    Container(
                                      child: _mybox2.get(73) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox2.get(73)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(701) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(701)}'),
                                    ),
                                    Container(
                                      child: _mybox2.get(72) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox2.get(72)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox2.delete(73);
                                        _mybox2.delete(701);
                                        _mybox2.delete(72);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
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
                  ),
                  // ------------วิดพื้น-------------------วิดพื้น------------------วิดพื้น----------------------------วิดพื้น-----------------------
                  Container(
                    // color: Colors.amber,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Text(
                      'วิดพื้น',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 400.0,
                        width: double.infinity,
                        // color: Color.fromARGB(255, 248, 116, 116),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 255, 181, 98),
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Color.fromARGB(255, 249, 242, 237),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: ListView(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("1"),
                                    Container(
                                      child: _mybox3.get(13) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox3.get(13)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(101) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(101)}'),
                                    ),
                                    Container(
                                      child: _mybox.get(12) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(12)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox3.delete(13);
                                        _mybox3.delete(101);
                                        _mybox3.delete(12);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("2"),
                                    Container(
                                      child: _mybox3.get(23) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox3.get(23)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(201) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(201)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(22) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(22)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox3.delete(23);
                                        _mybox3.delete(201);
                                        _mybox3.delete(22);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("3"),
                                    Container(
                                      child: _mybox3.get(33) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox3.get(33)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(301) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(301)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(32) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(32)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox3.delete(33);
                                        _mybox3.delete(301);
                                        _mybox3.delete(32);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("4"),
                                    Container(
                                      child: _mybox3.get(43) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox3.get(43)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(401) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(401)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(42) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(42)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox3.delete(43);
                                        _mybox3.delete(401);
                                        _mybox3.delete(42);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("5"),
                                    Container(
                                      child: _mybox3.get(53) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox3.get(53)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(501) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(501)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(52) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(52)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox3.delete(53);
                                        _mybox3.delete(501);
                                        _mybox3.delete(52);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("6"),
                                    Container(
                                      child: _mybox3.get(63) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox3.get(63)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(601) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(601)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(62) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(62)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox3.delete(63);
                                        _mybox3.delete(61);
                                        _mybox3.delete(62);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("7"),
                                    Container(
                                      child: _mybox3.get(73) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox3.get(73)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(701) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(701)}'),
                                    ),
                                    Container(
                                      child: _mybox3.get(72) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox3.get(72)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox3.delete(73);
                                        _mybox3.delete(701);
                                        _mybox3.delete(72);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
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
                  ),
                  // -------------ซิทอัพ---------------------ซิทอัพ----------------------ซิทอัพ-----------------------ซิทอัพ---------------------
                  Container(
                    // color: Colors.amber,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Text(
                      'ซิทอัพ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 400.0,
                        width: double.infinity,
                        // color: Color.fromARGB(255, 248, 116, 116),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 255, 181, 98),
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Color.fromARGB(255, 249, 242, 237),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: ListView(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("1"),
                                    Container(
                                      child: _mybox4.get(13) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox4.get(13)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(101) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(101)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(12) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(12)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox4.delete(13);
                                        _mybox4.delete(101);
                                        _mybox4.delete(12);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("2"),
                                    Container(
                                      child: _mybox4.get(23) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox4.get(23)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(201) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(201)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(22) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(22)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox4.delete(23);
                                        _mybox4.delete(201);
                                        _mybox4.delete(22);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("3"),
                                    Container(
                                      child: _mybox4.get(33) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox4.get(33)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(301) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(301)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(32) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(32)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox4.delete(33);
                                        _mybox4.delete(301);
                                        _mybox4.delete(32);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("4"),
                                    Container(
                                      child: _mybox4.get(43) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox4.get(43)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(401) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(401)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(42) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(42)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox4.delete(43);
                                        _mybox4.delete(401);
                                        _mybox4.delete(42);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("5"),
                                    Container(
                                      child: _mybox4.get(53) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox4.get(53)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(501) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(501)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(52) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(52)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox4.delete(53);
                                        _mybox4.delete(501);
                                        _mybox4.delete(52);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("6"),
                                    Container(
                                      child: _mybox4.get(63) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox4.get(63)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(601) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(601)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(62) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(62)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox4.delete(63);
                                        _mybox4.delete(61);
                                        _mybox4.delete(62);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 255, 168, 168),
                                ),
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("7"),
                                    Container(
                                      child: _mybox4.get(73) == null
                                          ? Text('ไม่พบเวลา')
                                          : Text('${_mybox4.get(73)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(701) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(701)}'),
                                    ),
                                    Container(
                                      child: _mybox4.get(72) == null
                                          ? Text('ไม่มี')
                                          : Text('${_mybox4.get(72)}'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        _mybox4.delete(73);
                                        _mybox4.delete(701);
                                        _mybox4.delete(72);
                                      },
                                      child: Text(
                                        'ลบ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
