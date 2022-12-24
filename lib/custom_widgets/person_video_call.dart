import 'package:flutter/material.dart';

class PersonVideoCall extends StatefulWidget {
  final String name;
  final String time;
  // incoming or outgoing (false outgoing true incoming)
  final bool madeType;
  const PersonVideoCall({
    Key? key,
    required this.name,
    required this.time,
    required this.madeType
  }) : super(key: key);

  @override
  State<PersonVideoCall> createState() => _PersonVideoCallState();
}

class _PersonVideoCallState extends State<PersonVideoCall> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // dense: true,
      leading: Icon(
        Icons.account_circle,
        size: 60.0,
      ),
      title: Text(
        widget.name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          widget.madeType ?
          Icon(
            Icons.call_made,
            color: Colors.green,
            size: 18.0,
          ):Icon(
            Icons.call_received,
            color: Colors.red,
            size: 18.0,
          ),
          Text(
            widget.time,
          ),
        ],
      ),
      trailing: Icon(
        Icons.video_camera_front,
        color: Colors.green,
      ),
    );
  }
}
