import 'package:flutter/material.dart';
import 'package:whatsapp_ui/custom_widgets/create_call_link.dart';
import 'package:whatsapp_ui/custom_widgets/menues.dart';
import 'package:whatsapp_ui/custom_widgets/person_video_call.dart';
import 'package:whatsapp_ui/custom_widgets/person_voice_call.dart';


class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
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
          CreateCallLink(),

          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              child: Text(
                "Recent",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          PersonVoiceCall(name: "Zubair Khan", time: "Today 7:12 AM", madeType: false,),
          PersonVideoCall(name: "Zubair Khan", time: "Today 7:12 AM", madeType: false,),
          PersonVideoCall(name: "Zubair Khan", time: "Today 7:12 AM", madeType: true,),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_ic_call, color: Colors.white,),
      ),
    );
  }
}
