import 'package:flutter/material.dart';
import 'package:whatshapp/color.dart';
import 'package:whatshapp/info.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const SenderMessageCard({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 50,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 14.0,
                  right: 30,
                  top: 10,
                  bottom: 20,
                ),
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 15,
                child: Row(
                  children: [
                    Text(
                      date,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.white60),
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    // const Icon(
                    //   Icons.done_all,
                    //   size: 17,
                    //   color: Colors.white60,
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
