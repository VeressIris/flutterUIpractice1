import 'package:flutter/material.dart';

enum Options { friends, global }

class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});

  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  Set<Options> _selectedOptions = {Options.global};

  void _onSelectionChanged(Set<Options> newSelection) {
    setState(() {
      _selectedOptions = newSelection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF333645),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SegmentedButton(
                    style: const ButtonStyle(
                      side: WidgetStatePropertyAll(BorderSide.none),
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xFF232531)),
                      padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 8, horizontal: 4)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14)))),
                    ),
                    selected: _selectedOptions,
                    showSelectedIcon: false,
                    onSelectionChanged: _onSelectionChanged,
                    segments: [
                      ButtonSegment(
                          value: Options.friends,
                          label: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 10),
                              decoration: BoxDecoration(
                                color:
                                    _selectedOptions.contains(Options.friends)
                                        ? const Color(0xFF787F99)
                                        : Colors.transparent,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                'Friends',
                                style: TextStyle(
                                    color: _selectedOptions
                                            .contains(Options.friends)
                                        ? Colors.white
                                        : const Color(0xFF787F99)),
                              ))),
                      ButtonSegment(
                          value: Options.global,
                          label: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 10),
                              decoration: BoxDecoration(
                                color: _selectedOptions.contains(Options.global)
                                    ? const Color(0xFF787F99)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                'Global',
                                style: TextStyle(
                                    color: _selectedOptions
                                            .contains(Options.global)
                                        ? Colors.white
                                        : const Color(0xFF787F99)),
                              ))),
                    ]),
                MaterialButton(
                  onPressed: () {},
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14))),
                  color: const Color(0xFF232531),
                  minWidth: 12,
                  elevation: 0,
                  padding: const EdgeInsets.all(6),
                  child: const Icon(Icons.file_upload_outlined,
                      color: Colors.white),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.person, color: Colors.white, size: 56),
                      Icon(Icons.leaderboard_outlined,
                          color: Color(0xFF787F99), size: 35),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rank #2,339',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Top 1%',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('88,242 points',
                          style: TextStyle(color: Color(0xFF787F99))),
                      Text('Out of 3,367,752 readers',
                          style: TextStyle(color: Color(0xFF787F99)))
                    ],
                  )
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: const [
                ListTile(
                  leading: Icon(Icons.person, color: Colors.white),
                  title: Text(
                    'Carson P',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
