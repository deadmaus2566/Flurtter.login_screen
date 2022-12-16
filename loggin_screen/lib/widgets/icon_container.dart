import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final String url;

  const IconContainer({required this.url, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.0,
      height: 190.0,
      child: CircleAvatar(
        radius: 100.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(this.url),
      ),
    );
  }
}
