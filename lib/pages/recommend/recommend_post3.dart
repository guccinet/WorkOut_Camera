import 'package:example/pages/Camera/camera_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Rcm3 extends StatefulWidget {
  // const Rcm1({Key? key}) : super(key: key);

  final String _num3;
  final String _numb3;

  Rcm3(this._num3, this._numb3);

  @override
  State<Rcm3> createState() => _Rcm2State();
}

class _Rcm2State extends State<Rcm3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Text("วิดีโอแนะนำ"),
        backgroundColor: Color.fromARGB(255, 248, 116, 116),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/imgbtn/w.jpg"), fit: BoxFit.cover),
        ),
        padding: EdgeInsets.all(10),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 10),
              padding: EdgeInsets.only(),
              width: double.infinity,
              height: 550,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/gif/post3.gif"),
                    fit: BoxFit.cover),
              ),
            ),
            TextButton(
              onPressed: () {
                EasyLoading.show(status: 'กำลังโหลดกล้อง...');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return camera_3(widget._num3, widget._numb3);
                    },
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 0, 0, 0),
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  color: Color.fromARGB(255, 248, 116, 116),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 50,
                width: double.infinity,
                // color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "เริ่มต้น",
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
