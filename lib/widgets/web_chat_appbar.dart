import 'package:flutter/material.dart';
import 'package:whatshapp/color.dart';
import 'package:whatshapp/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.082,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/Image4.jpg'),
                radius: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                info[0]['name'].toString(),
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.grey,),),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.grey,),),
            ],
          ),
        ],
      ),
    );
  }
}
