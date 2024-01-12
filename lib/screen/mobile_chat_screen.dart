import 'package:flutter/material.dart';
import 'package:whatshapp/color.dart';
import 'package:whatshapp/info.dart';
import 'package:whatshapp/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        //width:
        //MediaQuery.of(context).size.width * 0.66, // Fix the typo here
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/backgroundImage.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            //WebChatAppBar(),
            Expanded(child: ChatList()), //chat list
            //massege input box
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              padding: const EdgeInsets.only(
                top: 3,
                bottom: 8,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: dividerColor,
                  ),
                ),
                color: chatBarMessage,
                //borderRadius: BorderRadius.circular(10)
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
                        )),
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 1,
                        right:0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: searchBarColor,
                          filled: true,
                          hintText: 'Type a message',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
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
                      //right: 1,
                      bottom: 1,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.attach_file_sharp,
                        size:30,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                        padding: const EdgeInsets.only(
                          //left: 1,
                          //right: 1,
                          bottom: 1,
                          //top: 10,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_rounded,
                              size: 30,
                              color: Colors.grey,
                            )
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          //left: 20,
                          right: 5,
                          bottom: 1,
                        
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic,
                              size:30,
                              color: Colors.grey,
                            ),
                          ),
                      )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
