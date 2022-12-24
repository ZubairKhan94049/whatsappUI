import 'package:flutter/material.dart';
import 'package:whatsapp_ui/custom_widgets/menues.dart';
import 'package:whatsapp_ui/custom_widgets/person.dart';
import 'package:whatsapp_ui/custom_widgets/person_status.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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
              personName: "My status",
              personmsg: "Tap to add status update",
              timestamp: false,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Text(
                  "Recent Updates",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PersonStatusScreen(
              name: "Jhon Smith",
              time: "Today, 8:11 PM",
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Text(
                  "Viewed Updates",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PersonStatusScreen(
              name: "Zubair Khan",
              time: "Today, 7:11 PM",
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
                    "Your status updates are",
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.grey,
                child: Icon(Icons.edit),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: Icon(Icons.camera_alt),
            ),
          ],
        ));
  }
}
