import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_event1/ui/theme.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const MyButton({Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: primaryclr),
        child: Text(label,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}
