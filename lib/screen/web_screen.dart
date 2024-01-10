import 'package:flutter/material.dart';
import 'package:whatshapp/widgets/contacts_list.dart';
import 'package:whatshapp/widgets/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  // web search bar
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7, // Fix the typo here
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.png'),
                fit: BoxFit.cover,
              )
            )
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
