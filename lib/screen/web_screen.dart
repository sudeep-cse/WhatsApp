import 'package:flutter/material.dart';
import 'package:whatshapp/color.dart';
import 'package:whatshapp/widgets/chat_list.dart';
import 'package:whatshapp/widgets/contacts_list.dart';
import 'package:whatshapp/widgets/web_chat_appbar.dart';
import 'package:whatshapp/widgets/web_profile_bar.dart';
import 'package:whatshapp/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width:
                MediaQuery.of(context).size.width * 0.66, // Fix the typo here
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/backgroundImage.png'),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                WebChatAppBar(),
                Expanded(child: ChatList()), //chat list
                //massege input box
              ],
            ),
            // const DecoratedBox(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/backgroundImage.png'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
