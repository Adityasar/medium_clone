import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:medium_clone/screens/home/add.dart';
import 'package:medium_clone/screens/home/following.dart';
import 'package:medium_clone/screens/home/recommended.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = [const Recommended(), const Following()];
    final currentTab = useState(0);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Colors.greenAccent[400],
                    tabs: const [
                      Text('Recommended'),
                      Text('Following'),
                    ],
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        const TabBarView(
                          children: [
                            Recommended(),
                            Following(),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ClipOval(
                            child: SizedBox(
                              height: 62,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.greenAccent[400]),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const Add(),
                                    ),
                                  );
                                },
                                child: const Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
