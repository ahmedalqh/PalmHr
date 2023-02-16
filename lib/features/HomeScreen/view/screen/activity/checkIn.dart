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
                  child: Icon(Icons.close))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Stack(alignment: Alignment.center, children: [
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 234, 143, 15).withOpacity(0.3),
                    blurRadius: 16,
                    spreadRadius: 1.2,
                    offset: Offset(4, -16),
                    blurStyle: BlurStyle.normal),
              ], color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 48.0),
              child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 231, 230, 230),
                          blurRadius: 10,
                          spreadRadius: 0.2,
                          blurStyle: BlurStyle.normal),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0)),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.alarm,
                      color: Color.fromARGB(255, 233, 180, 20),
                      size: 34,
                    ),
                  )),
            ),
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  '8h :مرن',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('جدول اليوم')
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Text('الحضور'), Text('- -')],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(children: [Text('تسجيل خروج'), Text('- -')]),
              ),
              Column(children: [Text('تسجيل الحضور'), Text('٠٩:٥٤')])
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 218.0, right: 13, left: 13),
          child: Image.asset('assets/images/location.jpeg'),
        ),
        Container(
          width: 380,
          // height: 50,
          child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 241, 163, 73)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                              color: Color.fromARGB(255, 237, 143, 12))))),
              onPressed: () {},
              child: Text(
                'تسجيل خروج',
                style: TextStyle(color: Colors.white),
              )),
        )
      ]),
    );
  }
}
