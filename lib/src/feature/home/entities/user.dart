import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String name;
  final String avatar;

  const User({
    required this.name,
    required this.avatar,
  });

  // Méthodes de sérialisation générées automatiquement
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  // Méthode copyWith pour créer une copie modifiée
  User copyWith({
    String? name,
    String? avatar,
  }) {
    return User(
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User &&
        other.name == name &&
        other.avatar == avatar;
  }

  @override
  int get hashCode => Object.hash(name, avatar);

  @override
  String toString() {
    return 'User(name: $name, avatar: $avatar)';
  }
}