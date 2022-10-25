import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../product/constants/string_constants.dart';
import '../../../product/init/navigator/app_pages.dart';
import '../model/user_model.dart';
import '../module/widgets/user_card.dart';
import '../viewmodel/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ApplicationConstants.appName),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return controller.isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: controller.userList?.length,
                  itemBuilder: (context, index) {
                    UserModel user = controller.userList![index];
                    return UserCard(
                      user: user,
                      onTap: () {
                        Get.toNamed(Routes.DETAIL, arguments: user);
                      },
                    );
                  },
                );
        },
      ),
    );
  }
}
