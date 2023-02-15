import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'الحضور',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.cancel_outlined))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 224, 181, 39).withOpacity(0.3),
                  blurRadius: 16,
                  spreadRadius: 1.2,
                  offset: Offset(4, -16),
                  blurStyle: BlurStyle.normal),
            ], color: Colors.white),
          ),
        )
      ]),
    );
  }
}
