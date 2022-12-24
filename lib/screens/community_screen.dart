import 'package:flutter/material.dart';
import 'package:whatsapp_ui/custom_widgets/menues.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
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
          SizedBox(
            height: 40.0,
          ),
          Icon(
            Icons.commute,
            size: 150.0,
          ),
          SizedBox(
            height: 30.0,
          ),
          Column(
            children: [
              Text(
                "Introducing communities",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 5.0,),
              Text(
                "Easily organize your related groups and send announcements. Now, your communities, like neighborhoods or schools, can have their own \nspace",
                style: TextStyle(fontSize: 17.0, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  "Start your community",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
