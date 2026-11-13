import 'package:example/ui/export.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Permission.camera.request();
  await Permission.microphone.request();
  await Hive.initFlutter();
  await Hive.openBox('mybox');
  await Hive.openBox('myboxsquad');
  await Hive.openBox('myboxpushup');
  await Hive.openBox('myboxsitup');
  await Hive.openBox('myboxcallorie');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //theme: defaultTheme,
        title: 'Fitness AI',
        builder: EasyLoading.init(),
        home: menu_2());
  }
}
