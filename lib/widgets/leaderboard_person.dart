import 'package:flutter/material.dart';

class LeaderboardPerson extends StatelessWidget {
  const LeaderboardPerson({super.key, required this.name, required this.score});
  final String name;
  final String score;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person, color: Colors.white, size: 34),
      title:
          Text(name, style: const TextStyle(color: Colors.white, fontSize: 16)),
      trailing: Text(score,
          style: const TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}
