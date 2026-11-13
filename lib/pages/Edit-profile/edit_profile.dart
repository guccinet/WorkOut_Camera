
import 'package:example/pages/Edit-profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

enum SingingCharacter { men, women, other }

class _Edit_ProfileState extends State<Edit_Profile> {
  SingingCharacter? _character = SingingCharacter.other;

  final _mybox = Hive.box('mybox');
  final usernamecontrol = TextEditingController();
  final oldcontrol = TextEditingController();
  final weightcontrol = TextEditingController();
  final heightcontrol = TextEditingController();
  final dumbelcontrol = TextEditingController();

  String username = "";
  String old = "";
  String weight = "";
  String height = "";
  String sex = "";
  String gender = "";
  dynamic bmr = 0;
  int cal = 0;

  void bmrcal() {
    if (gender == 'ชาย') {
      cal = 1;
    } else if (gender == 'หญิง') {
      cal = 2;
    }
    var w = double.parse(weight);
    var h = double.parse(height);
    var ol = int.parse(old);
    if (cal == 1) {
      bmr = 66 + (13.7 * w) + (5 * h) - (6.8 * ol);
    } else if (cal == 2) {
      bmr = 665 + (9.6 * w) + (1.8 * h) - (4.7 * ol);
    }
  }

  String? _validatePositiveNumber(
    String? value, {
    required String field,
    bool integerOnly = false,
  }) {
    final parsed = integerOnly
        ? int.tryParse(value?.trim() ?? '')
        : double.tryParse(value?.trim() ?? '');
    if (parsed == null || !parsed.isFinite || parsed <= 0) {
      return 'กรุณากรอก$fieldเป็นตัวเลขที่มากกว่า 0';
    }
    return null;
  }

  @override
  void dispose() {
    usernamecontrol.dispose();
    oldcontrol.dispose();
    weightcontrol.dispose();
    heightcontrol.dispose();
    dumbelcontrol.dispose();
    super.dispose();
  }

  void savedata() {
    sex = "$gender";
    _mybox.put(10, '$username');
    _mybox.put(20, '$old');
    _mybox.put(30, '$weight');
    _mybox.put(40, '$height');
    _mybox.put(50, '$sex');
    _mybox.put(60, '${bmr.toStringAsFixed(2)}');
  }

  void readprofile() {
    _mybox.get(10);
    _mybox.get(20);
    _mybox.get(30);
    _mybox.get(40);
    _mybox.get(50);
    _mybox.get(60);
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 116, 116),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        elevation: 0.0,
        title: Text('แก้ไขและบันทึกโปรไฟล์',
            style: TextStyle(fontSize: 18.0, color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
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
        child: Form(
          // ใช้งาน Form
          key: _formKey, // กำหนด key
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: <Widget>[
                // กำหนด widget ที่จะใช้งานกับฟอร์ม
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextFormField(
                    controller: usernamecontrol,
                    decoration: const InputDecoration(
                      hintText: 'ชื่อ',
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      prefixIcon: Padding(
                        padding:
                            EdgeInsets.only(), // add padding to adjust icon
                        child: Icon(Icons.person),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'กรุณากรอกชื่อ';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'อายุ (ปี)',
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      prefixIcon: Padding(
                        padding:
                            EdgeInsets.all(10), // add padding to adjust icon
                        child: ImageIcon(
                          AssetImage(
                            'assets/img_icon/age.png',
                          ),
                          size: 16,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    controller: oldcontrol,
                    validator: (value) => _validatePositiveNumber(
                      value,
                      field: 'อายุ',
                      integerOnly: true,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'น้ำหนัก (กิโลกรัม)',
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      prefixIcon: Padding(
                        padding:
                            EdgeInsets.all(10), // add padding to adjust icon
                        child: ImageIcon(
                          AssetImage(
                            'assets/img_icon/weight.png',
                          ),
                          size: 16,
                        ),
                      ),
                    ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    controller: weightcontrol,
                    validator: (value) =>
                        _validatePositiveNumber(value, field: 'น้ำหนัก'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'ส่วนสูง (เซนติเมตร)',
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      prefixIcon: Padding(
                        padding:
                            EdgeInsets.all(10), // add padding to adjust icon
                        child: ImageIcon(
                          AssetImage(
                            'assets/img_icon/height.png',
                          ),
                          size: 16,
                        ),
                      ),
                    ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    controller: heightcontrol,
                    validator: (value) =>
                        _validatePositiveNumber(value, field: 'ส่วนสูง'),
                  ),
                ),
                RadioGroup<SingingCharacter>(
                  groupValue: _character,
                  onChanged: (value) {
                    setState(() {
                      _character = value;
                      if (value == SingingCharacter.men) {
                        gender = 'ชาย';
                      } else if (value == SingingCharacter.women) {
                        gender = 'หญิง';
                      } else {
                        gender = 'โปรดระบุเพศ';
                      }
                    });
                  },
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text('โปรดระบุเพศ'),
                        leading: const Radio<SingingCharacter>(
                          value: SingingCharacter.other,
                        ),
                      ),
                      ListTile(
                        title: const Text('ชาย'),
                        leading: const Radio<SingingCharacter>(
                          value: SingingCharacter.men,
                        ),
                      ),
                      ListTile(
                        title: const Text('หญิง'),
                        leading: const Radio<SingingCharacter>(
                          value: SingingCharacter.women,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 248, 116, 116), // Background color
                  ),
                  onPressed: () {
                    // อ้างอิงฟอร์มที่กำลังใช้งาน ตรวจสอบความถูกต้องข้อมูลในฟอร์ม
                    if (_formKey.currentState!.validate()) {
                      if (gender != 'ชาย' && gender != 'หญิง') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('กรุณาเลือกเพศเพื่อคำนวณ BMR'),
                          ),
                        );
                        return;
                      }
                      username = usernamecontrol.text;
                      old = oldcontrol.text;
                      weight = weightcontrol.text;
                      height = heightcontrol.text;

                      bmrcal();
                      savedata();
                      //หากผ่าน
                      // แสดงข้อความจำลอง ใน snackbar
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const profile(),
                        ),
                      );
                    }
                  },
                  child: const Text('บันทึก'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
