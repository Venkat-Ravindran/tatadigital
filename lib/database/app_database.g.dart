// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $doctorsTable extends doctors with TableInfo<$doctorsTable, doctor> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $doctorsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _specialityMeta =
      const VerificationMeta('speciality');
  @override
  late final GeneratedColumn<String> speciality = GeneratedColumn<String>(
      'speciality', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descMeta = const VerificationMeta('desc');
  @override
  late final GeneratedColumn<String> desc = GeneratedColumn<String>(
      'desc', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _experienceMeta =
      const VerificationMeta('experience');
  @override
  late final GeneratedColumn<String> experience = GeneratedColumn<String>(
      'experience', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<String> rating = GeneratedColumn<String>(
      'rating', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _patient_checkinsMeta =
      const VerificationMeta('patient_checkins');
  @override
  late final GeneratedColumn<int> patient_checkins = GeneratedColumn<int>(
      'patient_checkins', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, speciality, desc, experience, rating, patient_checkins];
  @override
  String get aliasedName => _alias ?? 'doctors';
  @override
  String get actualTableName => 'doctors';
  @override
  VerificationContext validateIntegrity(Insertable<doctor> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('speciality')) {
      context.handle(
          _specialityMeta,
          speciality.isAcceptableOrUnknown(
              data['speciality']!, _specialityMeta));
    } else if (isInserting) {
      context.missing(_specialityMeta);
    }
    if (data.containsKey('desc')) {
      context.handle(
          _descMeta, desc.isAcceptableOrUnknown(data['desc']!, _descMeta));
    } else if (isInserting) {
      context.missing(_descMeta);
    }
    if (data.containsKey('experience')) {
      context.handle(
          _experienceMeta,
          experience.isAcceptableOrUnknown(
              data['experience']!, _experienceMeta));
    } else if (isInserting) {
      context.missing(_experienceMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('patient_checkins')) {
      context.handle(
          _patient_checkinsMeta,
          patient_checkins.isAcceptableOrUnknown(
              data['patient_checkins']!, _patient_checkinsMeta));
    } else if (isInserting) {
      context.missing(_patient_checkinsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  doctor map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return doctor(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      speciality: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}speciality'])!,
      desc: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}desc'])!,
      experience: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}experience'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rating'])!,
      patient_checkins: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}patient_checkins'])!,
    );
  }

  @override
  $doctorsTable createAlias(String alias) {
    return $doctorsTable(attachedDatabase, alias);
  }
}

class doctor extends DataClass implements Insertable<doctor> {
  final int id;
  final String name;
  final String speciality;
  final String desc;
  final String experience;
  final String rating;
  final int patient_checkins;
  const doctor(
      {required this.id,
      required this.name,
      required this.speciality,
      required this.desc,
      required this.experience,
      required this.rating,
      required this.patient_checkins});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['speciality'] = Variable<String>(speciality);
    map['desc'] = Variable<String>(desc);
    map['experience'] = Variable<String>(experience);
    map['rating'] = Variable<String>(rating);
    map['patient_checkins'] = Variable<int>(patient_checkins);
    return map;
  }

  doctorsCompanion toCompanion(bool nullToAbsent) {
    return doctorsCompanion(
      id: Value(id),
      name: Value(name),
      speciality: Value(speciality),
      desc: Value(desc),
      experience: Value(experience),
      rating: Value(rating),
      patient_checkins: Value(patient_checkins),
    );
  }

  factory doctor.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return doctor(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      speciality: serializer.fromJson<String>(json['speciality']),
      desc: serializer.fromJson<String>(json['desc']),
      experience: serializer.fromJson<String>(json['experience']),
      rating: serializer.fromJson<String>(json['rating']),
      patient_checkins: serializer.fromJson<int>(json['patient_checkins']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'speciality': serializer.toJson<String>(speciality),
      'desc': serializer.toJson<String>(desc),
      'experience': serializer.toJson<String>(experience),
      'rating': serializer.toJson<String>(rating),
      'patient_checkins': serializer.toJson<int>(patient_checkins),
    };
  }

  doctor copyWith(
          {int? id,
          String? name,
          String? speciality,
          String? desc,
          String? experience,
          String? rating,
          int? patient_checkins}) =>
      doctor(
        id: id ?? this.id,
        name: name ?? this.name,
        speciality: speciality ?? this.speciality,
        desc: desc ?? this.desc,
        experience: experience ?? this.experience,
        rating: rating ?? this.rating,
        patient_checkins: patient_checkins ?? this.patient_checkins,
      );
  @override
  String toString() {
    return (StringBuffer('doctor(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('speciality: $speciality, ')
          ..write('desc: $desc, ')
          ..write('experience: $experience, ')
          ..write('rating: $rating, ')
          ..write('patient_checkins: $patient_checkins')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, speciality, desc, experience, rating, patient_checkins);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is doctor &&
          other.id == this.id &&
          other.name == this.name &&
          other.speciality == this.speciality &&
          other.desc == this.desc &&
          other.experience == this.experience &&
          other.rating == this.rating &&
          other.patient_checkins == this.patient_checkins);
}

class doctorsCompanion extends UpdateCompanion<doctor> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> speciality;
  final Value<String> desc;
  final Value<String> experience;
  final Value<String> rating;
  final Value<int> patient_checkins;
  final Value<int> rowid;
  const doctorsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.speciality = const Value.absent(),
    this.desc = const Value.absent(),
    this.experience = const Value.absent(),
    this.rating = const Value.absent(),
    this.patient_checkins = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  doctorsCompanion.insert({
    required int id,
    required String name,
    required String speciality,
    required String desc,
    required String experience,
    required String rating,
    required int patient_checkins,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        speciality = Value(speciality),
        desc = Value(desc),
        experience = Value(experience),
        rating = Value(rating),
        patient_checkins = Value(patient_checkins);
  static Insertable<doctor> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? speciality,
    Expression<String>? desc,
    Expression<String>? experience,
    Expression<String>? rating,
    Expression<int>? patient_checkins,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (speciality != null) 'speciality': speciality,
      if (desc != null) 'desc': desc,
      if (experience != null) 'experience': experience,
      if (rating != null) 'rating': rating,
      if (patient_checkins != null) 'patient_checkins': patient_checkins,
      if (rowid != null) 'rowid': rowid,
    });
  }

  doctorsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? speciality,
      Value<String>? desc,
      Value<String>? experience,
      Value<String>? rating,
      Value<int>? patient_checkins,
      Value<int>? rowid}) {
    return doctorsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      speciality: speciality ?? this.speciality,
      desc: desc ?? this.desc,
      experience: experience ?? this.experience,
      rating: rating ?? this.rating,
      patient_checkins: patient_checkins ?? this.patient_checkins,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (speciality.present) {
      map['speciality'] = Variable<String>(speciality.value);
    }
    if (desc.present) {
      map['desc'] = Variable<String>(desc.value);
    }
    if (experience.present) {
      map['experience'] = Variable<String>(experience.value);
    }
    if (rating.present) {
      map['rating'] = Variable<String>(rating.value);
    }
    if (patient_checkins.present) {
      map['patient_checkins'] = Variable<int>(patient_checkins.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('doctorsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('speciality: $speciality, ')
          ..write('desc: $desc, ')
          ..write('experience: $experience, ')
          ..write('rating: $rating, ')
          ..write('patient_checkins: $patient_checkins, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $doctorsTable doctors = $doctorsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [doctors];
}
