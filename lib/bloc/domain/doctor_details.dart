import 'dart:ffi';

class DoctorDetails {
  late int id;
  late String name;
  String? gender;
  int? experience;
  String? speciality;
  String? desc;
  double? rating;
  int? patientSize;

  DoctorDetails({required this.id, required this.name, this.gender, this.experience,
      this.speciality, this.desc, this.rating, this.patientSize});

  DoctorDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    experience = json['experience'];
    speciality = json['speciality'];
    desc = json['desc'];
    rating = json['rating'];
    patientSize = json['patientSize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] =id;
    data['name'] =name;
    data['gender'] =gender;
    data['experience'] =experience;
    data['speciality'] =id;
    data['desc'] =desc;
    data['rating'] =rating;
    data['patientSize'] =patientSize;
    return data;
  }
}
