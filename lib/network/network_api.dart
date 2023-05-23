import 'dart:io';

import 'package:dio/dio.dart';

class IgnoreCertificateErrorOverrides extends HttpOverrides{

  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = ((X509Certificate cert, String host, int port) {
        return true;
      });
  }
}

class NetworkAPI {
  static const baseURL = "http://demo3573541.mockable.io/";
  static const getDoctorsPath = "getDoctors";
  static const myAppointmentsPath = "getMyAppointments";


  Future<Dio> getDioClient() async {
    final dio = Dio(BaseOptions(validateStatus: (statusCode) {
      if (statusCode == 200) {
        return true;
      }
      return false;
    }));
    dio.options.baseUrl = baseURL;
    dio.options.connectTimeout = const Duration(seconds: 20);
    return dio;
  }

  Future<Response> getDoctors() async {
    Dio dio = await getDioClient();
    final response = await dio.get(getDoctorsPath);
    return response;
  }

  Future<Response> getMyAppointments() async {
    Dio dio = await getDioClient();
    final response = await dio.get(myAppointmentsPath);
    return response;
  }

}