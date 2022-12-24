import 'package:flutter/material.dart';

class PersonChateName extends StatefulWidget {
  final String personName;
  final String personmsg;
  final bool timestamp;
  const PersonChateName({
    Key? key,
    required this.personName,
    required this.personmsg,
    required this.timestamp
  }) : super(key: key);

  @override
  State<PersonChateName> createState() => _PersonChateNameState();
}

class _PersonChateNameState extends State<PersonChateName> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // dense: true,
      leading: Icon(
        Icons.account_circle,
        size: 60.0,
      ),
      title: Text(
        widget.personName,
        style: TextStyle(
            fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        widget.personmsg,
      ),
      trailing: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.only(bottom: 20.0),
            child: widget.timestamp? Text("7:54 PM"): Text(""),),
      ),
    );
  }
}
