import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CheckIN extends GetxController {
  bool flag = false;
  var dateTime = '--';
  var dateTimee = '--';
  var counter = 0;

  var attend = '--';

  changeState() {
    flag = !flag;
    counter++;

    update();
  }
}
