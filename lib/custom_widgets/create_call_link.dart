import 'package:flutter/material.dart';

class CreateCallLink extends StatefulWidget {
  const CreateCallLink({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateCallLink> createState() => _CreateCallLinkState();
}

class _CreateCallLinkState extends State<CreateCallLink> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // dense: true,
      leading: Icon(
        Icons.share,
        size: 60.0,
      ),
      title: Text(
        "Create Call Link",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle:Text(
        "Share a link for your WhatsApp Call",
      ),
    );
  }
}
