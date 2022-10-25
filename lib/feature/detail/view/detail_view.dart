import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';

import '../../../product/constants/string_constants.dart';
import '../../home/model/user_model.dart';

class UserDetailView extends StatefulWidget {
  const UserDetailView({
    super.key,
  });

  @override
  State<UserDetailView> createState() => _UserDetailViewState();
}

class _UserDetailViewState extends State<UserDetailView> {
  late UserModel user;

  @override
  void initState() {
    super.initState();
    user = Get.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Avatar
            Hero(
              tag: user.id!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  user.avatar!,
                  width: context.dynamicWidth(0.5),
                  height: context.dynamicWidth(0.5),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            context.emptySizedHeightBoxLow3x,
            // Name
            Text(
              '${user.name} ${user.surname}',
              style: Theme.of(context).textTheme.headline6,
            ),
            context.emptySizedHeightBoxLow3x,
            // Email
            Text(
              user.email!,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            context.emptySizedHeightBoxLow3x,
            // Phone
            Text(
              user.phone!,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            //  Info
            Padding(
              padding: context.paddingNormal,
              child: Text(
                ApplicationConstants.tempInfo * 5,
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Theme.of(context).primaryColor),
        onPressed: () => Get.back(),
      ),
    );
  }
}
