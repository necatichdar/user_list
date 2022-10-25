import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../model/user_model.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
    this.onTap,
  }) : super(key: key);

  final UserModel user;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: context.paddingNormal,
        onTap: onTap,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: user.id?.toString() ?? '',
              child: CircleAvatar(
                backgroundImage: NetworkImage(user.avatar!),
              ),
            ),
          ],
        ),
        title: Text('${user.name ?? ''} ${user.surname ?? ''}',
            style: context.textTheme.headline6),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            context.emptySizedHeightBoxLow,
            Row(
              children: [
                Icon(
                  CupertinoIcons.mail,
                  color: Theme.of(context).primaryColor,
                ),
                context.emptySizedWidthBoxLow,
                Expanded(child: Text(user.email ?? '')),
              ],
            ),
            context.emptySizedHeightBoxLow,
            Row(
              children: [
                Icon(
                  CupertinoIcons.phone,
                  color: Theme.of(context).primaryColor,
                ),
                context.emptySizedWidthBoxLow,
                Expanded(child: Text(user.phone ?? '')),
              ],
            ),
          ],
        ),
        //detail button
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
