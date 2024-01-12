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
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      ),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                          bottom: 1,
                          //top: 10,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              size: 30,
                              color: Colors.grey,
                            )
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          //left: 20,
                          right: 1,
                          bottom: 1,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.attach_file,
                              size: 30,
                              color: Colors.grey,
                            ),
                          ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 15,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.5),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(
                                left: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 18,
                          bottom: 1,
                        ),
                        child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.mic,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                      ),
                    ],
                  ),
                ),
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
