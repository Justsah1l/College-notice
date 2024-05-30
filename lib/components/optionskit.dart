import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Optionscreen extends StatefulWidget {
  IconData icon;
  String text;
  Optionscreen({required this.icon, required this.text, super.key});

  @override
  State<Optionscreen> createState() => _OptionscreenState();
}

class _OptionscreenState extends State<Optionscreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: 29,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            widget.text,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          )
        ],
      ),
    );
  }
}
