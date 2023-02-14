import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:palmhr/features/HomeScreen/view/screen/activity/cardActivity.dart';
import 'package:palmhr/features/HomeScreen/view/screen/appBar.dart';

class HomeScreenActivity extends StatelessWidget {
  const HomeScreenActivity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBarScreen(),
          SizedBox(
            height: 10,
          ),
          CardActivity(),
        ],
      ),
    );
  }
}
