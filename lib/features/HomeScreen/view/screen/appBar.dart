import 'package:flutter/material.dart';

import 'activity/checkIn.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color.fromARGB(255, 244, 243, 243),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0)),
                    ),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: ((context) {
                              return Container();
                            }));
                      },
                      child: const Icon(
                        Icons.notifications_none_sharp,
                        color: Colors.grey,
                        size: 30,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0),
                            bottomLeft: Radius.circular(40.0)),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: ((context) {
                                return CheckInScreen();
                              }));
                        },
                        child: const Icon(
                          Icons.access_alarm,
                          color: Colors.grey,
                          size: 30,
                        ),
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    'مرحبا وليد',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://as2.ftcdn.net/v2/jpg/04/24/45/15/1000_F_424451597_Kx2SrOtG2TQXoUEGs0IheKx0uIXZE4zO.jpg'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
