import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key,
    required this.label,
    required this.onTap,
    required this.buttonColor,
    required this.textColor,
    required this.keyName});

  final String label;
  final VoidCallback onTap;
  final Color buttonColor;
  final Color textColor;
  final String keyName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: Key(keyName),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              )
          ),
          minimumSize: MaterialStateProperty.all(const Size(200, 48))
      ),
      onPressed: onTap,
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          fontFamily: 'SoraSemiBold',
        ),
      ),
    );
  }
}


class CommonText extends StatelessWidget {
  const CommonText({super.key, required this.label,
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.textColor});

  final String label;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: textColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
        fontFamily: fontFamily,
      ),
    );
  }
}

class ShowProgressDialog {
  static void showLoaderDialog(BuildContext context){
    AlertDialog alert=AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(margin: const EdgeInsets.only(left: 7),child:const Text("Loading..." )),
        ],),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }
}