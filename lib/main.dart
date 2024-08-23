import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Icon(Icons.arrow_back_ios)),
                Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.network(
                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fd28hgpri8am2if.cloudfront.net%2Fbook_images%2Fonix%2Fcvr9781501110368%2Fit-ends-with-us-9781501110368_hr.jpg&f=1&nofb=1&ipt=b6d5bd64cc1c397b9abd1cc6ae00173775d6f025a24808277f41f84eb9e4d558&ipo=images',
                        height: 40)),
                const Text(
                  'It Ends With Us',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
              MaterialButton(
                onPressed: () {},
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))),
                color: const Color(0xFF333645),
                minWidth: 12,
                padding: const EdgeInsets.all(6),
                child: const Icon(Icons.add, color: Colors.white),
              )
            ],
          ),
          // leading: const Icon(Icons.arrow_back_ios),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
