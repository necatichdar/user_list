import 'package:get/get.dart';

import '../model/user_model.dart';
import '../service/user_service_interface.dart';

class HomeController extends GetxController {
  final IUserService contentService;
  HomeController(this.contentService) {
    _fetchContentList();
  }

  List<UserModel>? userList;
  bool isLoading = false;
  void get changeLoading => isLoading = !isLoading;

  Future<void> _fetchContentList() async {
    changeLoading;
    userList = (await contentService.fetchUserList()) ?? [];
    changeLoading;
    update();
  }
}
