import 'package:flutter/material.dart';

class BigDataBlob extends StatelessWidget {
  const BigDataBlob(
      {super.key,
      required this.backgroundColor,
      required this.title,
      required this.content});
  final Color backgroundColor;
  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 16)),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(42, 0, 0, 0),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(Icons.file_upload_outlined,
                      color: Colors.white, size: 28),
                ),
              ],
            ),
            content
          ],
        ));
  }
}
