import 'package:flutter/material.dart';
import 'package:tata_digital/bloc/domain/doctor_details.dart';

import '../../utils/util_service.dart';
import 'common_ui.dart';

class DoctorDetailsWidget extends StatefulWidget {
  final List<DoctorDetails> doctorDetails;

  const DoctorDetailsWidget({Key? key, required this.doctorDetails})
      : super(key: key);

  @override
  State<DoctorDetailsWidget> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetailsWidget> {
  var loggedInName;
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      loggedInName = await UtilityService().readString("name");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: CommonText(label:'Welcome $loggedInName',
                    fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'SoraSemiBold', textColor: Colors.black)
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: widget.doctorDetails.length,
              itemBuilder: (BuildContext context, int index) {
                final item = widget.doctorDetails[index];
                return doctorListRow(item.name, item.speciality!, item.experience!, item.gender!);
              },
            ),
          ]
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Widget doctorListRow(String name, String speciality, int experience, String gender){
    return GestureDetector(
      onTap: () {

      },
      child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 10),
            child: Row(
              children: [
                getIcon(gender),
                Column(
                    children: [
                      CommonText(label:"Name: $name",
                          fontSize: 20, fontWeight: FontWeight.w600, fontFamily: 'SoraSemiBold', textColor: Colors.black),
                      CommonText(label:"Speciality: $speciality",
                          fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'SoraSemiBold', textColor: Colors.black),
                      CommonText(label:"Experience: $experience",
                          fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'SoraSemiBold', textColor: Colors.black)
                    ]
                ),
              ],
            ),
          )
      ),
    );
  }

  Widget getIcon(String gender){
    if(gender == "M"){
      return Image.asset('assets/images/doc_male.png',width: 80, height: 80);
    } else {
      return Image.asset('assets/images/doc_female.png',width: 80, height: 80);
    }
  }

  BottomNavigationBar buildMyNavBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.blueAccent.withOpacity(.40),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        setState(() {
          _currentIndex = value;
          //Next screen based on selection
        });
      },
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Appointments',
          icon: Icon(Icons.note),
        ),
        BottomNavigationBarItem(
          label: 'Chat',
          icon: Icon(Icons.chat),
        ),
        BottomNavigationBarItem(
          label: 'Settings',
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}
