import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/calls_screen.dart';
import 'package:whatsapp_ui/screens/community_screen.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';
import '../screens/chates_screen.dart';

class TopMenues extends StatefulWidget {
  const TopMenues({Key? key}) : super(key: key);

  @override
  State<TopMenues> createState() => _TopMenuesState();
}

class _TopMenuesState extends State<TopMenues> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.infinity,
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CommunityScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.groups,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatesScreen(),
                ),
              );
            },
            child: Text(
              "Chates",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StatusScreen(),
                ),
              );
            },
            child: Text(
              "Status",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CallsScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Text(
                "Calls",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
