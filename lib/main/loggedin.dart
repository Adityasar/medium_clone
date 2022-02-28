import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:medium_clone/screens/account.dart';
import 'package:medium_clone/screens/bookmarks.dart';
import 'package:medium_clone/screens/home.dart';
import 'package:medium_clone/screens/search.dart';

class LoggedIn extends HookWidget {
  const LoggedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final currentIndex = useState(0);
    final screens = [
      const Home(),
      const Search(),
      const Bookmarks(),
      const Account()
    ];

    return Scaffold(
      body: SafeArea(
        child: screens[currentIndex.value],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.greenAccent[400],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex.value,
        onTap: (index) {
          currentIndex.value = index;
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks_outlined),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: ClipOval(
              child: Material(
                color: Colors.grey,
                child: Ink.image(
                  image: NetworkImage(
                    user!.photoURL.toString(),
                  ),
                  fit: BoxFit.contain,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
