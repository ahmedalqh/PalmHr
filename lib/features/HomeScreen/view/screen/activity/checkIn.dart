import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text('الحضور'),
              ),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.cancel_outlined))
            ],
          ),
        )
      ]),
    );
  }
}
