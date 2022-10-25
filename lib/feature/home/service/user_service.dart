import 'dart:io';

import 'package:dio/dio.dart';

import '../../../product/constants/enums/service_enum.dart';
import '../model/user_model.dart';
import 'user_service_interface.dart';

class UserService extends IUserService {
  UserService(super.dio);

  @override
  Future<List<UserModel>?> fetchUserList() async {
    try {
      final response = await dio.get(ServiceEnum.user.withSlash);
      if (response.statusCode == HttpStatus.ok) {
        final List<UserModel> userList = [];
        for (final item in response.data) {
          userList.add(UserModel.fromJson(item));
        }
        return userList;
      }
    } on DioError catch (e) {
      return throw Exception(e.message);
    }
    return null;
  }
}
