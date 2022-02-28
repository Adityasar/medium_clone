import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:medium_clone/screens/home/Following.dart';
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
          SizedBox(
            width: 260,
            child: DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: TabBar(
                indicatorColor: Colors.greenAccent[400],
                onTap: (val){
                  currentTab.value = val;
                },
                tabs: const [
                  Text('Recommended'),
                  Text('Following'),
                ],
              ),
            ),
          ),
          tabs[currentTab.value],
        ],
      ),
    );
  }
}
