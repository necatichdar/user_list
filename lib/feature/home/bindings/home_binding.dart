import 'package:get/get.dart';

import '../../../product/service/project_network_manager.dart';
import '../service/user_service.dart';
import '../viewmodel/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        UserService(ProjectNetworkManager.instance.service),
      ),
    );
  }
}
