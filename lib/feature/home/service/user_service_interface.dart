import 'package:dio/dio.dart';

import '../model/user_model.dart';

abstract class IUserService {
  IUserService(this.dio);
  final Dio dio;

  Future<List<UserModel>?> fetchUserList();
}
