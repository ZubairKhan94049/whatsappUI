import 'package:flutter/material.dart';
import 'package:whatsapp_ui/custom_widgets/person.dart';

import '../custom_widgets/menues.dart';

class ChatesScreen extends StatefulWidget {
  const ChatesScreen({Key? key}) : super(key: key);

  @override
  State<ChatesScreen> createState() => _ChatesScreenState();
}

class _ChatesScreenState extends State<ChatesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {
              print("Camera");
            },
            icon: Icon(Icons.camera_alt_outlined),
            tooltip: "Call",
          ),
          IconButton(
            onPressed: () {
              print("Search");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("More");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView(
        children: [
          TopMenues(),
          PersonChateName(
            personName: "Zainab Khalid",
            personmsg: "Hello, complete howa ke nhi ?",
            timestamp: true,
          ),
          PersonChateName(
            personName: "My Zong",
            personmsg: "Ohoooo",
            timestamp: true,
          ),

          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 0.1,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.lock,
                    size: 15.0,
                  ),
                ),
                Text(
                  "Your personal messages are",
                ),
                Text(
                  " end-to-end encrypted",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.message),
      ),
    );
  }
}

//
// Column(
// children: [
// TopMenues(),
// ListView(
// padding: const EdgeInsets.all(8),
// children: <Widget>[
// // PersonChateName(personName: "Zainab Khalid", personmsg: "Hello, complete howa ke nhi ?",),
// // PersonChateName(personName: "My Zong", personmsg: "Ohoooo",),
// // PersonChateName(personName: "My Zong", personmsg: "Ohoooo",),
// ],
// )
// ],
// )
