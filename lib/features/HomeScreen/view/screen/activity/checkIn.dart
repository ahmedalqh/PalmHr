import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palmhr/features/HomeScreen/controller/checkInScreen.dart';

class CheckInScreen extends StatefulWidget {
  const CheckInScreen({Key key}) : super(key: key);

  @override
  State<CheckInScreen> createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen> {
  @override
  Widget build(BuildContext context) {
    var c_flage = Get.put(CheckIN());

    return GetBuilder<CheckIN>(
        builder: ((controller) => Container(
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
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                        c_flage.flag
                            ? BoxShadow(
                                color: Color.fromARGB(255, 234, 143, 15)
                                    .withOpacity(0.3),
                                blurRadius: 16,
                                spreadRadius: 1.2,
                                offset: Offset(4, -16),
                                blurStyle: BlurStyle.normal)
                            : BoxShadow(
                                color: Color.fromARGB(255, 18, 152, 38)
                                    .withOpacity(0.3),
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
                              color: c_flage.flag
                                  ? Color.fromARGB(255, 233, 180, 20)
                                  : Color.fromARGB(255, 13, 151, 59),
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
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                        children: [Text('الحضور'), Text('${c_flage.attend}')],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(children: [
                          Text('تسجيل خروج'),
                          Text('${c_flage.dateTimee}')
                        ]),
                      ),
                      Column(children: [
                        Text('تسجيل الحضور'),
                        Text('${c_flage.dateTime}')
                      ])
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 218.0, right: 13, left: 13),
                  child: Image.asset('assets/images/location.jpeg'),
                ),
                Container(
                  width: 380,
                  // height: 50,
                  child: TextButton(
                      style: c_flage.flag
                          ? ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 241, 163, 73)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(
                                      color:
                                          Color.fromARGB(255, 237, 143, 12)))))
                          : ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 8, 147, 49)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Color.fromARGB(255, 4, 147, 4))))),
                      onPressed: () async {
                        if (c_flage.counter == 1) {
                          c_flage.attend =
                              '4'; //change number 4 to real numbe between them.
                        }
                        TimeOfDay hour = TimeOfDay(
                            hour: DateTime.now().hour,
                            minute: DateTime.now().minute);

                        TimeOfDay hourOut = TimeOfDay(
                            hour: DateTime.now().hour,
                            minute: DateTime.now().minute);

                        await c_flage.changeState();

                        c_flage.flag
                            ? c_flage.dateTime = '${hourOut}'
                            : c_flage.dateTimee = '${hour}';
                      },
                      child: c_flage.flag
                          ? Text(
                              'تسجيل خروج',
                              style: TextStyle(color: Colors.white),
                            )
                          : Text(
                              'تسجيل حضور',
                              style: TextStyle(color: Colors.white),
                            )),
                ),
              ]),
            )));
  }
}
