import 'package:todo_project/utils/date_formatter.dart';

class UserDtlModel {
  int userId;
  String displayName;
  String? userInfo;
  String? imageUrl;
  String? contact;
  DateTime createAt;
  DateTime updateAt;

  UserDtlModel({
    required this.userId,
    required this.displayName,
    this.userInfo,
    this.imageUrl,
    this.contact,
    required this.createAt,
    required this.updateAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'user_id': userId,
      'display_name': displayName,
      'user_info': userInfo,
      'image_url': imageUrl,
      'contact': contact,
      'create_at': sqlDateFormatter.format(createAt),
      'update_at': sqlDateFormatter.format(updateAt),
    };
  }

  factory UserDtlModel.fromMap(Map<String, dynamic> map) {
    return UserDtlModel(
      userId: map['user_id'] as int,
      displayName: map['display_name'] as String,
      userInfo: map['user_info'] != null ? map['user_info'] as String : null,
      imageUrl: map['image_url'] != null ? map['image_url'] as String : null,
      contact: map['contact'] != null ? map['contact'] as String : null,
      createAt: DateTime.parse(map['create_at']),
      updateAt: DateTime.parse(map['update_at']),
    );
  }

  static UserDtlModel sampleModelOne = UserDtlModel(userId: 1, displayName: "Test#1", createAt: DateTime.now(), updateAt: DateTime.now());
  static UserDtlModel sampleModelTwo = UserDtlModel(userId: 2, displayName: "Test#2", createAt: DateTime.now(), updateAt: DateTime.now());
}