class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  // user.toJson() เรียกผ่านออบเจกต์ ต้องมีออบเจกต์ก่อนถึงจะเรียกได้
  Map<String, Object?> toJson() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

  // 	MyUserEntity.fromJson(json) เรียกผ่านคลาส สร้างออบเจกต์ใหม่โดยไม่ต้องมีออบเจกต์เดิม
  static MyUserEntity fromJson(Map<String, dynamic> json) {
    return MyUserEntity(
      userId: json['userId'],
      email: json['email'],
      name: json['name'],
      hasActiveCart: json['hasActiveCart'],
    );
  }
}
