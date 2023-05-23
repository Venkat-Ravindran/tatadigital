import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:tata_digital/bloc/domain/doctor_details.dart';

@immutable
abstract class NetworkState {}

class NetworkInitState extends NetworkState {
  @override
  String toString() {
    return "NetworkInitState";
  }
}

class NetworkLoading extends NetworkState {
  @override
  String toString() {
    return "NetworkLoading";
  }
}

class NetworkError extends NetworkState {
  final String? errorMessage;
  NetworkError(this.errorMessage);
  @override
  String toString() {
    return "NetworkError";
  }
}

class DoctorsListLoaded extends NetworkState {
  final List<DoctorDetails> response;
  DoctorsListLoaded(this.response);
  @override
  String toString(){
    return "DoctorsListLoaded";
  }
}



