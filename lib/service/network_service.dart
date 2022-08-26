import 'package:http_interceptor/http_interceptor.dart';
import 'package:online8/service/service_interceptor.dart';

class NetworkServices{


  // baseUrl
  static const isTester = true;

  static const DEVELOMENT_SERVER = 'api.github.com';
  static const DEPLOYMENT_SERVER = 'api.github.com';

  static String get BASEURL {
    if(isTester){
      return DEVELOMENT_SERVER;
    }else{
      return DEPLOYMENT_SERVER;
    }
  }

  // api
  static const API_GET_USERS_LIST = '/users';
  static const API_GET_USER = '/users/Sunnat03';  // {username}

  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization' : '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',
  };

  // interceptor
  static final http = InterceptedHttp.build(interceptors: [
    InterceptorService(),
  ]);


  // methods
  static Future<String?> GET(String api, Map<String, String> params) async {
    Uri url = Uri.https(BASEURL, api, params);
    final response = await http.get(url, headers: headers);

    if(response.statusCode == 200){
      return response.body;
    }
    return null;
  }

  // params

  static Map<String, String> paramsEmpty(){
    Map<String, String> map = {};
    return map;
  }

}