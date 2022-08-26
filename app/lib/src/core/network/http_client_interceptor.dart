

import 'package:http_interceptor/http/http.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:web_application/src/core/api/api_setting/api_setting.dart';

class HttpClientInterceptor extends InterceptorContract{

  @override
  Future<RequestData> interceptRequest({required RequestData data})  async{
    RequestData request =  data;
    // request.toHttpRequest(). = Uri.parse("");
    request.baseUrl ="https://restaurante-8b7db-default-rtdb.firebaseio.com/users.json";
    return  request;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    return data;
  }

}
