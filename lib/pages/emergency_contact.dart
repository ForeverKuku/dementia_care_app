import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyContactPage extends StatefulWidget {
  const EmergencyContactPage({super.key});

  @override
  State<EmergencyContactPage> createState() => _EmergencyContactPageState();
}

class _EmergencyContactPageState extends State<EmergencyContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dementia Care Assistant"),
      ),
      body: Center(child: buildButton()),
    );
  }

  Widget buildButton() {
    final number = '+250785603898';

    return ListTile(
        title: const Text('Faith Makulah Swen'),
        subtitle: Text(number),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('images/old_lady.jpg'),
        ),
        trailing: TextButton(
            style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.redAccent))),
            onPressed: () async {
              //indirect phone call:
              launch('tel://$number');
              //direct phone call:
              await FlutterPhoneDirectCaller.callNumber('number');
            },
            child: const Text('Call')));
  }
}
