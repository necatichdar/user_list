class UserModel {
  String? name;
  String? surname;
  String? email;
  String? phone;
  String? avatar;
  String? id;

  UserModel(
      {this.name, this.surname, this.email, this.phone, this.avatar, this.id});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    surname = json['surname'];
    email = json['email'];
    phone = json['phone'];
    avatar = json['avatar'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['surname'] = surname;
    data['email'] = email;
    data['phone'] = phone;
    data['avatar'] = avatar;
    data['id'] = id;
    return data;
  }
}
