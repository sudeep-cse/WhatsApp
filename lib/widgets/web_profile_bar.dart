import 'package:flutter/material.dart';
import 'package:whatshapp/color.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.30,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          )
        ),
        color: webAppBarColor,
      )
    );
  }
}