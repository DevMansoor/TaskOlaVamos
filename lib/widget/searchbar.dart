import 'package:flutter/material.dart';

class MySearch extends StatelessWidget {
  const MySearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.grey,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: "Search Country",
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
