import 'package:flutter/material.dart';

import '../../utils/util_service.dart';
import 'common_ui.dart';
import 'home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: registrationPage(),
              ),
            ]
        )
    );
  }

  Widget registrationPage(){
    return Form(
      child: Expanded(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 4, top: 10),
                child: const SizedBox(
                    width: 199,
                    height: 50,
                    child: CommonText(label: 'Let\'s get started',
                        fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'SoraSemiBold', textColor: Colors.black)
                )
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 4, top: 10),
                child: SizedBox(
                    width: UtilityService().getDeviceWidth(context),
                    height: 35,
                    child: const CommonText(label: 'Enter your name',
                        fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'SoraSemiBold', textColor: Colors.black)
                )
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 4, top: 15),
                child: SizedBox(
                    width: UtilityService().getDeviceWidth(context),
                    height: 12,
                    child: CommonText(label: 'Name'.toUpperCase(),
                        fontSize: 10, fontWeight: FontWeight.w600, fontFamily: 'SoraRegular', textColor: const Color(0xff6B6B6B))
                )
            ),
            Container(
              padding: const EdgeInsets.only(left: 4),
              child: TextFormField(
                controller: nameController,
                keyboardType:TextInputType.text,
                maxLength: 30,
                style: const TextStyle(
                    fontFamily: 'SoraRegular',
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                ),
              ),
            ),
            Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(4, 10, 4, 0),
                child: CommonButton(label: 'Login',
                    onTap: (){
                      UtilityService().write("name", nameController.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const HomeScreen()),
                      );
                    }, buttonColor: const Color(0XFFCB4475),
                    textColor: Colors.white,
                    keyName: "login")
            ),
          ],
        ),
      ),
    );
  }


}