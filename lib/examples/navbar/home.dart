import 'package:flutter/material.dart';
import 'package:weeklywidgets/examples/navbar/explore.dart';
import 'package:weeklywidgets/examples/navbar/notifications.dart';
import 'package:weeklywidgets/examples/navbar/profile.dart';
import 'package:weeklywidgets/examples/navbar/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = const [
    ExplorePage(),
    SearchPage(),
    NotificationsPage(),
    ProfilePage()
  ];
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MediaQuery.of(context).size.width < 600
            ? NavigationBar(
                elevation: 1,
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                destinations: const [
                  
                  NavigationDestination(
                      icon: Icon(Icons.explore, color: Color(0xff0E3692)),
                      label: 'Explore'),
                  NavigationDestination(
                    icon: Icon(
                      Icons.search_rounded,
                      color: Color(0xff0E3692),
                    ),
                    label: 'Search',
                  ),
                  NavigationDestination(
                      icon: Icon(Icons.notifications_rounded,
                          color: Color(0xff0E3692)),
                      label: 'Notifications'),
                  NavigationDestination(
                      icon: Icon(Icons.person, color: Color(0xff0E3692)),
                      label: 'Profile'),
                ],
                labelBehavior:
                    NavigationDestinationLabelBehavior.onlyShowSelected,
                selectedIndex: currentPageIndex,
                onDestinationSelected: (index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
              )
            : null,
        body: Row(
          children: [
            if (MediaQuery.of(context).size.width >= 600)
              NavigationRail(
                useIndicator: true,
                destinations: const <NavigationRailDestination>[
                  
                  NavigationRailDestination(
                      selectedIcon:
                          Icon(Icons.explore, color: Color(0xff0E3692)),
                      icon: Icon(Icons.explore_outlined),
                      label: Text('Explore')),
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.search_rounded,
                    ),
                    selectedIcon: Icon(
                      Icons.favorite_rounded,
                      color: Color(0xff0E3692),
                    ),
                    label: Text('Search'),
                  ),
                  NavigationRailDestination(
                      icon: Icon(Icons.notifications_outlined),
                      selectedIcon: Icon(Icons.notifications_rounded,
                          color: Color(0xff0E3692)),
                      label: Text('Notifications')),
                  NavigationRailDestination(
                      icon: Icon(Icons.person_outlined),
                      selectedIcon:
                          Icon(Icons.person, color: Color(0xff0E3692)),
                      label: Text('Profile')),
                ],
                selectedIndex: currentPageIndex,
                labelType: NavigationRailLabelType.selected,
                onDestinationSelected: (index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
              ),
              if (MediaQuery.of(context).size.width >= 600)
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: IndexedStack(
                index: currentPageIndex,
                children: pages,
              ),
            ),
          ],
        ));
  }
}
