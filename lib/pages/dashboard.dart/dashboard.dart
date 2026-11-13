import 'package:example/pages/Edit-profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => dashboardState();
}

class dashboardState extends State<dashboard> {
  final _mybox5 = Hive.box('myboxcallorie');
  final TextStyle whitetext = TextStyle(color: Colors.white);
  final callorie = TextEditingController();
  final _goalFormKey = GlobalKey<FormState>();

  Future<void> percencal(double goal, double burned) async {
    final remaining = (goal - burned).clamp(0.0, double.infinity);
    final progress = (burned / goal).clamp(0.0, 1.0);
    await Future.wait<void>([
      _mybox5.put(1000, remaining),
      _mybox5.put(1001, progress),
    ]);
  }

  @override
  void dispose() {
    callorie.dispose();
    super.dispose();
  }

  void popup() {
    showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: Text('เป้าหมายที่ต้องการลดกี่แคลอรี่'),
          content: Form(
            key: _goalFormKey,
            child: Container(
              margin: EdgeInsets.only(top: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color.fromARGB(255, 248, 116, 116),
                    ),
                  ),
                  hintText: 'กรอกจำนวณแคลอรี่',
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                controller: callorie,
                validator: (value) {
                  final goal = double.tryParse(value?.trim() ?? '');
                  if (goal == null || !goal.isFinite || goal <= 0) {
                    return 'กรุณากรอกตัวเลขที่มากกว่า 0';
                  }
                  return null;
                },
              ),
            ),
          ),
          actions: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 181, 98),
                borderRadius: BorderRadius.circular(5.0),
              ),
              height: 40,
              width: 100,
              margin: EdgeInsets.only(bottom: 15, right: 15),
              child: TextButton(
                child: Text("ตกลง", style: TextStyle(color: Colors.white)),
                onPressed: () async {
                  if (!_goalFormKey.currentState!.validate()) {
                    return;
                  }

                  final goal = double.parse(callorie.text.trim());
                  final storedBurned = _mybox5.get(999);
                  final burned = storedBurned == null
                      ? 0.0
                      : double.tryParse(storedBurned.toString());
                  if (burned == null || !burned.isFinite || burned < 0) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('ข้อมูลแคลอรี่ที่บันทึกไว้ไม่ถูกต้อง'),
                      ),
                    );
                    return;
                  }

                  await Future.wait<void>([
                    _mybox5.put(11, goal.toString()),
                    percencal(goal, burned),
                  ]);
                  if (!context.mounted) {
                    return;
                  }
                  Navigator.of(context).pop();
                  setState(() {});
                },
              ),
            ),
          ],
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 249, 242, 237),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 116, 116),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const profile()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        elevation: 0.0,
        title: Text(
          'ดาชบอร์ด',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _buildbody(context),
    );
  }

  Widget _buildbody(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imgbtn/w.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            _buildheader(),
            const SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 80.0,
                        color: Color.fromARGB(255, 255, 181, 98),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ListTile(
                              title: _mybox5.get(11) == null
                                  ? Text(
                                      'ไม่พบ Cal',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    )
                                  : Text(
                                      '${_mybox5.get(11)} Cal',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                              trailing: MaterialButton(
                                color: Color.fromARGB(255, 248, 116, 116),
                                onPressed: () {
                                  popup();
                                },
                                child: Container(
                                  child: Text(
                                    'ระบุเป้าหมายแคลอรี่',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text('เป้าหมายแคลอรี่', style: whitetext),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 200.0,
                        color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ListTile(
                              title: _mybox5.get(999) == null
                                  ? Text(
                                      'ไม่พบจำนวน Cal',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    )
                                  : Text(
                                      '${_mybox5.get(999).toStringAsFixed(2)} Cal',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                              trailing: FaIcon(FontAwesomeIcons.fire),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'จำนวนแคลอรี่ที่ เบิร์น',
                                style: whitetext,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: _mybox5.get(1) == null
                                  ? Text('ยกดัมเบล 0 Cal', style: whitetext)
                                  : Text(
                                      'ยกดัมเบล ${_mybox5.get(1)} Cal',
                                      style: whitetext,
                                    ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: _mybox5.get(2) == null
                                  ? Text('สควอช จัมพ์ 0 Cal', style: whitetext)
                                  : Text(
                                      'สควอช จัมพ์ ${_mybox5.get(2)} Cal',
                                      style: whitetext,
                                    ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: _mybox5.get(3) == null
                                  ? Text('วิดพื้น 0 Cal', style: whitetext)
                                  : Text(
                                      'วิดพื้น ${_mybox5.get(3)} Cal',
                                      style: whitetext,
                                    ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: _mybox5.get(4) == null
                                  ? Text('ซิทอัพ 0 Cal', style: whitetext)
                                  : Text(
                                      'ซิทอัพ ${_mybox5.get(4)} Cal',
                                      style: whitetext,
                                    ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 200.0,
                        color: Color.fromARGB(255, 248, 116, 116),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ListTile(
                              title: _mybox5.get(1000) == null
                                  ? Text(
                                      'ไม่พบจำนวน Cal',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    )
                                  : Text(
                                      '${_mybox5.get(1000).toStringAsFixed(2)} Cal',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                              trailing: FaIcon(
                                FontAwesomeIcons.fireFlameCurved,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'จำนวนแคลอรี่ที่เหลือ',
                                style: whitetext,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildheader() {
    dynamic value = 0;
    dynamic value2 = 0;

    value = _mybox5.get(1001) == null ? value = 0.0 : _mybox5.get(1001);
    value2 = _mybox5.get(1001) == null ? value2 = 0.0 : _mybox5.get(1001) * 100;
    String value3 = value2.toStringAsFixed(2);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 120,
            width: 100,
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              radius: 50,
              lineWidth: 20,
              percent: value,
              progressColor: Colors.blue,
              backgroundColor: Color.fromARGB(255, 248, 116, 116),
              circularStrokeCap: CircularStrokeCap.round,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'เป้าหมายสำเร็จไปแล้ว',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(height: 15.0),
                _mybox5.get(1001) == null
                    ? Text(
                        "0 %",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      )
                    : Text(
                        '${value3}%',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                _mybox5.get(1001) == 1.0
                    ? Text(
                        'ครบจำนวนแคลอลี่ที่ต้องการแล้วกรุณาระบุเป้าหมายใหม่',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.center,
                      )
                    : Text(''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
