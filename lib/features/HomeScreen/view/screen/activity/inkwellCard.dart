import 'package:flutter/material.dart';

class InkwellCard extends StatelessWidget {
  const InkwellCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: const [
                    Text('PalmHR فريق  '),
                    Text(
                      'منذ 3 سنوات',
                      style:
                          TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
                    )
                  ],
                ),
                const CircleAvatar(
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
                  child: const Text(
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
                  child: const Text(
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
                  Text('0 '),
                  Icon(
                    Icons.favorite_outline,
                    color: Color.fromARGB(255, 203, 203, 203),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Divider(
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, right: 11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    width: 300,
                    height: 53,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 15.3,
                          color: Color.fromARGB(255, 135, 136, 136),
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 232, 231, 231),
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 230, 231, 231),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText:
                                'اكتب رسالة او علامة@ يتبعه اسم الشخص المراد',
                            fillColor: Color.fromARGB(255, 230, 228, 228),
                            filled: true),
                      ),
                    )),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://as2.ftcdn.net/v2/jpg/04/24/45/15/1000_F_424451597_Kx2SrOtG2TQXoUEGs0IheKx0uIXZE4zO.jpg',
                      scale: 3),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
