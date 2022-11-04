import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  final Widget? child;
  const NewsContainer({Key? key,this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: child,
    );
  }
}
