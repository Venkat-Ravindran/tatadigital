import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tata_digital/bloc/presentation/app.dart';
import 'package:tata_digital/database/app_database.dart';
import 'package:provider/provider.dart';

import 'network/network_api.dart';

Future<void> main() async {
  // initialize the database
  await GetStorage.init();
  HttpOverrides.global = IgnoreCertificateErrorOverrides();
  runApp(
    Provider<MyDatabase>(
      create: (context) => MyDatabase(),
      child: const App(),
      dispose: (context, db) => db.close(),
    ),
  );

  // runApp(const App());
}
