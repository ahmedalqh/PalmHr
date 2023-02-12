import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/HomeScreen/view/screen/NavButtonBar/buttonNavBar.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavBar();
  }
}
