import 'package:flutter/material.dart';
import 'package:spotify/pages/homepage.dart';
import 'package:spotify/pages/library.dart';
import 'package:spotify/pages/searchpage.dart';

class HomeBar extends StatefulWidget {
  const HomeBar({super.key});

  @override
  State<HomeBar> createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {
  int selectedIndex = 0;
  void navigate(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> children = [
    const HomePage(),
    const SearchPage(),
    const LibraryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.transparent,
        currentIndex: selectedIndex,
        onTap: navigate,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_filled),
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search_outlined),
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.library_music),
            icon: Icon(Icons.library_music_outlined),
            label: 'Your Library',
          ),
        ],
      ),
    );
  }
}
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Column(
      //           children: const [
      //             Icon(
      //               Icons.home_filled,
      //               color: Colors.white,
      //             ),
      //             Text(
      //               'Home',
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ],
      //         ),
      //         Column(
      //           children: const [
      //             Icon(
      //               Icons.search_outlined,
      //               color: Colors.white,
      //             ),
      //             Text(
      //               'Search',
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ],
      //         ),
      //         Column(
      //           children: const [
      //             Icon(
      //               Icons.library_music,
      //               color: Colors.white,
      //             ),
      //             Text(
      //               'Your Library',
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ],
      //         ),
      //         GestureDetector(
      //           onTap: () => Navigator.of(context).push(
      //             MaterialPageRoute(
      //               builder: (BuildContext context) => const PremiumPage(),
      //             ),
      //           ),
      //           child: Column(
      //             children: const [
      //               Icon(
      //                 Icons.music_note_outlined,
      //                 color: Colors.grey,
      //               ),
      //               Text(
      //                 'Premium',
      //                 style: TextStyle(color: Colors.grey),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     )
      //   ],
      // ),
    
