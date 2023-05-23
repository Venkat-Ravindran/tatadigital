import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:tata_digital/bloc/domain/doctor_details.dart';

import '../repository/network_repository.dart';
import 'network_event.dart';
import 'package:bloc/bloc.dart';

import 'network_state.dart';

class GetDoctorsBLoC extends Bloc<NetworkEvent, NetworkState> {
  final NetworkCallRepository networkRepository;
  GetDoctorsBLoC({required this.networkRepository}) : super(NetworkInitState());

  @override
  Stream<NetworkState> mapEventToState(NetworkEvent event,) async* {
    yield NetworkLoading();
    if (event is RegistrationInfo) {
      try {
        String data = await DefaultAssetBundle.of(event.context).loadString("assets/doctors.json");
        // Response getDoctorsResponse = await networkRepository.getListOfDoctors();
        await Future.delayed(const Duration(seconds: 5));
        // if(getDoctorsResponse.statusCode == 200) {
        List<dynamic> parsedData = jsonDecode(data);
        List<DoctorDetails> doctorModel = [];
        for (var i in parsedData) {
          doctorModel.add(DoctorDetails.fromJson(i));
        }
        yield DoctorsListLoaded(doctorModel);
        // } else {
        //   yield NetworkError(getDoctorsResponse.data);
        // }
      } catch (e) {
        print("Exception while fetching doctor details: $e");
        yield NetworkError(e.toString());
      }
    }
  }

}