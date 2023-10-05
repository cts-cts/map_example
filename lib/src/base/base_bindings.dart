import 'package:get/get.dart';
import 'package:map_example/src/controllers/map_controller.dart';

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapController());
  }
}
