import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'auth_keys.dart';
import 'dart:convert';
import 'http_exception.dart';

class Authentication with ChangeNotifier {
  Future<void> signUp(String email, String password) async {
    const url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$firebase_auth_key';

    try {
      final response = await http.post(
        url,
        body: json.encode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          },
        ),
      );

      final responseData = json.decode(response.body);
      // print(responseData);

      if (responseData['error'] != null) {
        throw HttpException(
          responseData['error']['message'],
        );
      }
    } catch (error) {
      throw error;
    }
  }

  Future<void> logIn(String email, String password) async {
    const url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$firebase_auth_key';

    try {
      final response = await http.post(
        url,
        body: json.encode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          },
        ),
      );

      final responseData = json.decode(response.body);
      // print(responseData);

      if (responseData['error'] != null) {
        throw HttpException(
          responseData['error']['message'],
        );
      }
    } catch (error) {
      throw error;
    }
  }
}
