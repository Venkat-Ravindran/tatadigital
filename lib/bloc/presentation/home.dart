import 'package:flutter/material.dart';
import 'package:tata_digital/bloc/domain/doctor_details.dart';
import 'package:tata_digital/bloc/domain/network_state.dart';
import 'package:tata_digital/bloc/presentation/doctors_list.dart';
import 'package:tata_digital/utils/util_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/doctors_list_bloc.dart';
import '../domain/network_event.dart';
import '../repository/network_repository.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final NetworkCallRepository _networkRepository;
  late final GetDoctorsBLoC _doctorsBloc;

  @override
  void initState()  {
    super.initState();
    _networkRepository = NetworkCallRepository();
    _doctorsBloc = GetDoctorsBLoC(networkRepository: _networkRepository);
    _doctorsBloc.add(RegistrationInfo(context));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: BlocBuilder(
            bloc: _doctorsBloc,
            builder: (BuildContext context, NetworkState state) {
              if (state is NetworkLoading) {
                return const CircularProgressIndicator();
              }
              if (state is DoctorsListLoaded) {
                return DoctorDetailsWidget(doctorDetails: state.response);
              }
              return const Text('Unable to fetch the doctor details!!!');
            }),
      ),
    );
  }
}