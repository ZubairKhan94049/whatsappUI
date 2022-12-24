import 'package:flutter/material.dart';

class PersonStatusScreen extends StatefulWidget {
  final String name;
  final String time;

  const PersonStatusScreen({
    Key? key,
    required this.name,
    required this.time,
  }) : super(key: key);

  @override
  State<PersonStatusScreen> createState() => _PersonStatusScreenState();
}

class _PersonStatusScreenState extends State<PersonStatusScreen> {
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
      subtitle: Text(
        widget.time,
      ),
    );
  }
}
