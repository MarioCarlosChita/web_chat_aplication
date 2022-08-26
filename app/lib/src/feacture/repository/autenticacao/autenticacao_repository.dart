import 'package:web_application/src/core/api/api_setting/api_setting.dart';
import 'package:web_application/src/core/network/http_client_maneger.dart';
import 'package:web_application/src/feacture/services/models/params/user_params.dart';
import '../../services/models/params/autenticacao_params.dart';
import 'dart:convert';

class AutenticacaoRepository {
  AutenticacaoRepository({required this.httpClientManager});

  final HttpClientManager httpClientManager;
  final String _pathJson = "/users.json";

  Future<void> login(AutenticacaoParam autenticacaoParam) async {
    return;
  }

  Future<void> createAccount(UserParams params) async {
    Map<String, dynamic> _requestBody = params.toMap();
    // final response = await this
    //     .httpClientManager
    //     .cliente
    //     .post(Uri.parse("${_pathJson}"), body: json.encode(_requestBody));
    return;
  }
}
