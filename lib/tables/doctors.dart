import 'package:drift/drift.dart';

class doctors extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get speciality => text()();
  TextColumn get desc => text()();
  TextColumn get experience => text()();
  TextColumn get rating => text()();
  IntColumn get patient_checkins => integer()();
}