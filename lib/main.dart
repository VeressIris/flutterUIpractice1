import 'package:flutter/material.dart';
import 'package:ui_practice_1/widgets/big_data_blob.dart';
import 'package:ui_practice_1/widgets/data_blob.dart';
import 'package:ui_practice_1/widgets/data_blob_text_content.dart';
import 'package:ui_practice_1/widgets/leaderboard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF232531),
        appBar: AppBar(
          backgroundColor: const Color(0xFF232531),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Padding(
                    padding: EdgeInsets.only(left: 8, right: 16),
                    child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.network(
                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fd28hgpri8am2if.cloudfront.net%2Fbook_images%2Fonix%2Fcvr9781501110368%2Fit-ends-with-us-9781501110368_hr.jpg&f=1&nofb=1&ipt=b6d5bd64cc1c397b9abd1cc6ae00173775d6f025a24808277f41f84eb9e4d558&ipo=images',
                        height: 40)),
                const Text(
                  'It Ends With Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
              MaterialButton(
                onPressed: () {},
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                color: const Color(0xFF333645),
                minWidth: 12,
                elevation: 0,
                padding: const EdgeInsets.all(6),
                child: const Icon(Icons.add, color: Colors.white),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigDataBlob(
                    backgroundColor: const Color.fromARGB(255, 254, 222, 103),
                    title: 'PROGRESS',
                    content: Row(
                      children: [
                        const Icon(Icons.menu_book_rounded, size: 36),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('543', style: TextStyle(fontSize: 42)),
                        ),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                                text: "Out of 1,225 pages\n",
                                children: [
                              TextSpan(
                                  text: '#5 among friends',
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ]))
                      ],
                    )),
                SizedBox(
                  height: 380,
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                    children: [
                      const DataBlob(
                          backgroundColor: Color.fromARGB(255, 255, 154, 98),
                          title: 'TIME',
                          content: DataBlobTextContent(
                            icon: Icons.watch_later_outlined,
                            bigText: '6:24',
                            content:
                                'Global avg. read time for your progress 7:28',
                            boldText: '23% faster',
                          )),
                      const DataBlob(
                          backgroundColor: Color.fromARGB(255, 182, 242, 106),
                          title: 'STREAK',
                          content: DataBlobTextContent(
                            icon: Icons.bolt_rounded,
                            bigText: '7',
                            content:
                                'Day streak, come back tomorrow to keep it up!',
                            boldText: '19% more consistent',
                          )),
                      const DataBlob(
                          backgroundColor: Color.fromARGB(255, 201, 159, 255),
                          title: 'LEVEL',
                          content: DataBlobTextContent(
                            icon: Icons.donut_large_rounded,
                            bigText: '2',
                            content: '145 reader points to level up!',
                            boldText: 'Top 5% for this book',
                          )),
                      DataBlob(
                          backgroundColor:
                              const Color.fromARGB(255, 148, 218, 251),
                          title: 'BADGES',
                          content: Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: GridView.count(
                              crossAxisCount: 3,
                              mainAxisSpacing: 3,
                              children: const [
                                Icon(Icons.lightbulb_outline_rounded, size: 32),
                                Icon(Icons.check_circle_outline_rounded,
                                    size: 32),
                                Icon(Icons.star_outline_rounded, size: 32),
                                Icon(Icons.hourglass_empty_rounded, size: 32),
                                Icon(Icons.book_outlined, size: 32),
                                Icon(Icons.thumb_up_alt_outlined, size: 32)
                              ],
                            ),
                          ))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 24),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: MaterialButton(
                          onPressed: () {},
                          color: const Color(0xFF787F99),
                          textColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.add), Text('Add friends')],
                          ),
                        ),
                      )),
                      MaterialButton(
                        onPressed: () {},
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        color: const Color(0xFF333645),
                        minWidth: 12,
                        elevation: 0,
                        padding: const EdgeInsets.all(6),
                        child: const Icon(Icons.file_upload_outlined,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                const Text('Leaderboard',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Leaderboard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
