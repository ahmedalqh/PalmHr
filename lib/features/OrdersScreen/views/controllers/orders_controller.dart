import 'package:get/get.dart';

class OrdersController extends GetxController {
  Rxn<int> selectedOrder = Rxn<int>();
  var order = "";
  void selcetOrder() {
    order = selectedOrder == 1
        ? "HR"
        : selectedOrder == 2
            ? "vacation"
            : selectedOrder == 3
                ? "Payments Assistant"
                : "All Floor";
    update();
  }
}
