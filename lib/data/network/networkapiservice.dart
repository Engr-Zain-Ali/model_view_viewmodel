import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:model_view_viewmodel/data/app_expections.dart';
import 'package:model_view_viewmodel/data/network/baseapiservice.dart';
import 'package:http/http.dart'as http;
class NetworkApiService extends BaseApiservices{
  @override
  Future getGetApiResponce(String url) async {
    dynamic responseJson;
   try{
     final response= await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
responseJson=returnResponse(response);
   }on SocketException{
     throw FetchDataException('No Internet Connection');
   }
   return responseJson;
  }

  @override
  Future getPostApiResponce(String url,dynamic data) async{
    dynamic responseJson;
    try{
      Response response=await post(
        Uri.parse(url),
        body:data
      ).timeout(Duration(seconds: 15)),
      responseJson=returnResponse( response);
    }on SocketException{
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }
dynamic returnResponse (http.Response response){
    switch(response.statusCode){
      case 200:
      dynamic responseJson=jsonDecode(response.body);
      return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 500:
        throw UnauthoriseException(response.body.toString());
      case 404:
        throw BadRequestException(response.body.toString());
      throw FetchDataException("Error Occured while communication with server "+"with status code"+response.statusCode.toString());
    }
}
}