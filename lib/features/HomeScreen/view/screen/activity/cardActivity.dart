import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardActivity extends StatelessWidget {
  const CardActivity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 380,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 231, 230, 230),
                  blurRadius: 10,
                  spreadRadius: 0.2,
                  blurStyle: BlurStyle.normal),
            ],
            color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(' PalmHR فريق  '),
                      Text(
                        'منذ 3 سنوات',
                        style: TextStyle(
                            color: Color.fromARGB(255, 145, 145, 145)),
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.licdn.com/dms/image/C560BAQF5NC5OSHtegQ/company-logo_200_200/0/1566307930483?e=2147483647&v=beta&t=4LdV0oz2JN4OAGG3JySuutDaJKq3JRrAaIxzZ9Ahau8'),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 2.0, top: 10),
                  child: Container(
                    width: 362,
                    child: Text(
                      'مرحبا بك في نظام الموار البشرية ببساطه تجربة مختلفه لنظام الموارد البشرية',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 2.0, top: 10),
                  child: Container(
                    width: 362,
                    child: Text(
                      'نحن سعداء للاعلان عن نظام الموارد البشرية الجديد لشركتنا مع يمكنك انشاء وتتبع اي نوع من انواع الطلبات والحصول علئ لمحه عامه عن اوراقك وقساىم الدفع الخاص بك و التفاعل مع فريقك بطريقة مبسطه. قم بتصفح النظام والمحاوله بنفسك لمعرفة المزيد',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 98, 98, 98)),
                      textAlign: TextAlign.right,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: Image.asset(
                'assets/images/palmHR.jpeg',
                fit: BoxFit.fill,
                height: 300,
                width: double.infinity,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('0 '),
                    Icon(
                      Icons.chat,
                      color: Color.fromARGB(255, 203, 203, 203),
                    )
                  ],
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('0'),
                    Icon(
                      Icons.favorite_outline,
                      color: Color.fromARGB(255, 203, 203, 203),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
