import 'package:dio/dio.dart';

import '../../network/network_api.dart';

// Fetch the api response and pass it to bloc component
class NetworkCallRepository {
  Future<Response> getListOfDoctors() => NetworkAPI().getDoctors();
  Future<Response> getUserAppointments() async => NetworkAPI().getMyAppointments();
}