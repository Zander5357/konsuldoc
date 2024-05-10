import 'dart:io';

import 'package:konsuldoc/domain/entities/admin.dart';

abstract interface class AdminRepository {
  Future<List<Admin>> fetch(int page, int perPage);
  Future<Admin> fetchById(String id);
  Future<void> add({
    File? avatar,
    required String email,
    required String password,
    required String name,
    String? phone,
  });
  Future<void> edit(
    String id, {
    String? avatar,
    required String email,
    required String name,
    String? phone,
  });
}
