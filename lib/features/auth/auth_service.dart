import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../core/api/api_client.dart';
import '../../core/api/pksoft_urls.dart';

class AuthService {
  static const _storage = FlutterSecureStorage();

  static Future<bool> login(String email, String password) async {
    final res = await ApiClient.post(PksoftUrls.customer.login, {
      "email": email,
      "password": password,
    });

    if (res.statusCode == 200) {
      final data = jsonDecode(res.body);
      await _storage.write(key: "token", value: data["token"]);
      return true;
    }
    return false;
  }
}
