import 'package:flutter/material.dart';

class PersonVoiceCall extends StatefulWidget {
  final String name;
  final String time;
  final bool madeType;

  const PersonVoiceCall(
      {Key? key,
      required this.name,
      required this.time,
      required this.madeType})
      : super(key: key);

  @override
  State<PersonVoiceCall> createState() => _PersonVoiceCallState();
}

class _PersonVoiceCallState extends State<PersonVoiceCall> {
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
          widget.madeType
              ? Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 18.0,
                )
              : Icon(
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
        Icons.call,
        color: Colors.green,
      ),
    );
  }
}
