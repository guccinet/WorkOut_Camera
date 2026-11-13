import 'package:example/pages/recommend/recommend_post2.dart';
import 'package:flutter/material.dart';

class post2 extends StatefulWidget {
  final heroTag2;
  final Name2;

  post2({this.heroTag2, this.Name2});

  @override
  _post2State createState() => _post2State();
}

class _post2State extends State<post2> {
  var selectedCard = '';

  int _num2 = 0;
  int _numb2 = 0;

  void _incrementCounter_arrow() {
    if (_num2 > 0) {
      if (_numb2 > 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Rcm2('$_num2', "$_numb2");
            },
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text('กรุณาเลือกจำนวนต่อเซต'),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text('กรุณาเลือกจำนวนเซต'),
        ),
      );
    }
  }

  void _incrementCount1() {
    setState(() {
      _numb2++;
    });
  }

  void _decrementCount1() {
    setState(() {
      if (_numb2 >= 1) {
        _numb2--;
      }
    });
  }

  void _incrementCount() {
    setState(() {
      _num2++;
    });
  }

  void _decrementCount() {
    setState(() {
      if (_num2 >= 1) {
        _num2--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 116, 116),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('', style: TextStyle(fontSize: 18.0, color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height - 80.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent),
              Positioned(
                top: 75.0,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        topRight: Radius.circular(45.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/imgbtn/w.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width),
              ),
              Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: Hero(
                  tag: widget.heroTag2,
                  child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.heroTag2),
                            fit: BoxFit.cover),
                      ),
                      height: 200.0,
                      width: 200.0),
                ),
              ),
              Positioned(
                top: 250.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.Name2,
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "โปรดเลือกจำนวนเซต",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Container(height: 25.0, color: Colors.grey, width: 1.0),
                        Container(
                          width: 125.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.0),
                              color: Color.fromARGB(255, 248, 116, 116)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: _decrementCount,
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color:
                                          Color.fromARGB(255, 248, 116, 116)),
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                              Text('$_num2',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0)),
                              InkWell(
                                onTap: _incrementCount,
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color: Colors.white),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 248, 116, 116),
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "จำนวนต่อเซต",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Container(height: 25.0, color: Colors.grey, width: 1.0),
                        Container(
                          width: 125.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.0),
                              color: Color.fromARGB(255, 248, 116, 116)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: _decrementCount1,
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color:
                                          Color.fromARGB(255, 248, 116, 116)),
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                              Text('$_numb2',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0)),
                              InkWell(
                                onTap: _incrementCount1,
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color: Colors.white),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 248, 116, 116),
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      height: 120.0,
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "กางขาสองข้างให้ระยะห่างเท่าช่วงไหล่ของคุณแล้วย่อเข่าลง โดยขณะที่คุณย่อเข่าจะต้องไม่ให้หัวเข่าเลยปลายเท้า ย่อลงไปให้ได้มุมเข่า 90 องศา สามารถยื่นแขนมาข้างหน้าเพื่อทรงตัวได้แล้วลุกขึ้น และเกร็งหน้าทองไว้ด้วย จุดส้นเท้าเป็นจุดที่รับน้ำหนัก จากนั้นยืดตัวขึ้น นับเป็น 1 ครั้ง",
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 50.0,
                        child: GestureDetector(
                          onTap: () async {
                            _incrementCounter_arrow();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 255, 255, 255),
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              color: Color.fromARGB(255, 248, 116, 116),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    "ตกลง",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
