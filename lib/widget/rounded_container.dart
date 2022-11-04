import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final IconData icon;

  const RoundedContainer({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(child: Icon(icon, color: Colors.white)),
      ]),
    );
  }
}
