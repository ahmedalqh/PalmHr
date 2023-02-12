import 'package:flutter/material.dart';

import 'features/HomeScreen/view/screen/NavButtonBar/buttonNavBar.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyNavigationBar();
  }
}
