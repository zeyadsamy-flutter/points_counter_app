import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final VoidCallback press;
  final String text;
  final Widget? icon;
  
  const AddButton({required this.press, required this.text, this.icon});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffff9900),
      ),
      onPressed: press,
      label: Text( text, style: TextStyle(color: Colors.black)),
      icon: icon,
    );
  }
}
