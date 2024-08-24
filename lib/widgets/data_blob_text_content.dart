import 'package:flutter/material.dart';

class DataBlobTextContent extends StatelessWidget {
  const DataBlobTextContent(
      {super.key,
      required this.icon,
      required this.bigText,
      required this.content,
      required this.boldText});
  final IconData icon;
  final String bigText;
  final String content;
  final String boldText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Icon(
                  icon,
                  size: 36,
                ),
              ),
              Text(bigText,
                  style: const TextStyle(
                      fontSize: 42, fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Text(content,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        Text(boldText,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
