import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        'Username',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text('Active 30m ago'),
      leading: CircleAvatar(
        backgroundColor: Colors.indigo,
        radius: 30,
      ),
      trailing: Icon(
        Icons.photo_camera_outlined,
        size: 30,
      ),
    );
  }
}
