import 'package:flutter/material.dart';
import 'package:test_app/screen/output_screen.dart';

class CustomListTile extends StatelessWidget {
  final int index;

  const CustomListTile({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: index % 2 == 0
          ? const CircleAvatar(
              backgroundImage: AssetImage('assets/images/cafe.jpg'))
          : const CircleAvatar(
              backgroundImage: AssetImage('assets/images/racials.jpg')),
      title: Text('Shishir Sharma id:$index'),
      subtitle: const Text('kathmandu, Nepal'),
      trailing: const Icon(Icons.arrow_forward),
      tileColor: index % 2 == 0 ? Colors.white70 : Colors.black12,
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OutputScreen(index: index)));
      },
    );
  }
}
