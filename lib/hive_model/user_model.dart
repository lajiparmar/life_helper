
import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String email;

  @HiveField(3)
  int age;

  @HiveField(4)
  bool isActive;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.age,
    required this.isActive,
  });
}
