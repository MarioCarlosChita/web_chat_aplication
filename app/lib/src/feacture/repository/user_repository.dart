import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:web_application/src/core/api/api_setting/api_setting.dart';

class UserRepository{
  final  http.Client client;
  late   Uri uri ;
  UserRepository({required this.client}){
     this.uri = Uri.https(ApiSetting.BASEURL, "/users.json");
  }


  Future<void>  listUsers() async{
    try{
      final response =  await this.client.get(this.uri);
      print(response.body);
      return ;
    } on SocketException{
      throw SocketException("Socket error");
    }
  }

  Future<void> addUser() async{
    Map<String, dynamic> maps =<String, dynamic>{};
    maps['name'] = "teste";
    maps['emial']= "teste@gmail.com";

    final response = await this.client.post(
      this.uri,
      body:json.encode(maps) ,
    );
  }

}