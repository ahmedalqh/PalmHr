import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palmhr/features/OrdersScreen/views/controllers/orders_controller.dart';

import '../widgets/button_bar.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({Key key}) : super(key: key);

  final controller = Get.put(OrdersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.info_outline)),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: ((context) {
                              return Container(
                                height: 350,
                                child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Obx(
                                      () => Column(
                                        children: [
                                          Icon(
                                            Icons.maximize_rounded,
                                            size: 40,
                                            color: Colors.grey,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "تم انجاز الكل",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "فلترة",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          CheckboxListTile(
                                              dense: true,
                                              title: Row(
                                                children: [
                                                  const Text(
                                                      'طلبات الموارد البشرية'),
                                                  Icon(Icons
                                                      .person_outline_outlined)
                                                ],
                                              ),
                                              // subtitle: const Text('This is the subtitle with ID 1'),
                                              checkColor: Colors.white,
                                              activeColor: Colors.blueGrey,
                                              checkboxShape:
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                              value: controller
                                                      .selectedOrder.value ==
                                                  1,
                                              onChanged: (val) {
                                                val ?? true
                                                    ? controller
                                                        .selectedOrder.value = 1
                                                    : controller.selectedOrder
                                                        .value = null;
                                                controller.selcetOrder();
                                                print(controller
                                                    .selectedOrder.value);
                                                Get.back();
                                              }),
                                          CheckboxListTile(
                                              dense: true,
                                              title: Row(
                                                children: [
                                                  const Text('طلب اجازة'),
                                                  Icon(Icons
                                                      .access_time_outlined)
                                                ],
                                              ),
                                              // subtitle: const Text('This is the subtitle with ID 1'),
                                              checkColor: Colors.white,
                                              activeColor: Colors.blueGrey,
                                              checkboxShape:
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                              value: controller
                                                      .selectedOrder.value ==
                                                  2,
                                              onChanged: (val) {
                                                val ?? true
                                                    ? controller
                                                        .selectedOrder.value = 2
                                                    : controller.selectedOrder
                                                        .value = null;
                                                controller.selcetOrder();
                                                print(controller
                                                    .selectedOrder.value);
                                                Get.back();
                                              }),
                                          CheckboxListTile(
                                              dense: true,
                                              title: Row(
                                                children: [
                                                  const Text(
                                                      'مساعد طلبات الدفع'),
                                                  Icon(Icons
                                                      .monetization_on_outlined)
                                                ],
                                              ),
                                              // subtitle: const Text('This is the subtitle with ID 1'),
                                              checkColor: Colors.white,
                                              activeColor: Colors.blueGrey,
                                              checkboxShape:
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                              value: controller
                                                      .selectedOrder.value ==
                                                  3,
                                              onChanged: (val) {
                                                val ?? true
                                                    ? controller
                                                        .selectedOrder.value = 3
                                                    : controller.selectedOrder
                                                        .value = null;
                                                controller.selcetOrder();
                                                print(controller
                                                    .selectedOrder.value);
                                                Get.back();
                                              }),
                                        ],
                                      ),
                                    )),
                              );
                            }));
                      },
                      icon: Icon(Icons.sort_outlined)),
                ],
              ),
            ),
            Text(
              "طلباتي",
              style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(255, 70, 69, 69),
                  fontWeight: FontWeight.bold),
            ),
            Expanded(child: ButtonBarWidget())
          ],
        ),
      ),
    );
  }
}
