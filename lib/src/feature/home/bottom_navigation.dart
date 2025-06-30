import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:my_recrue/src/feature/home/contact_list_full_screen.dart';
import 'package:my_recrue/src/feature/home/contact_list_screen.dart';
import 'package:my_recrue/src/feature/home/create_contact_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  final List<Color> colors = [
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.pink,
  ];
  int currentPage = 0;
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    tabController.addListener(() {
      if (!tabController.indexIsChanging) {
        setState(() {
          currentPage = tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    tabController.dispose(); // Très important de disposer le TabController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BottomBar(
            child: TabBar(
              controller: tabController,
              tabs: const [
                Tab(text: 'Favoris', icon: Icon(Icons.favorite_border)),
                Tab(text: 'Récents', icon: Icon(Icons.watch_later_outlined)),
                Tab(
                  text: 'Contacts',
                  icon: Icon(Icons.perm_contact_cal_outlined),
                ),
              ],
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              labelColor: Theme.of(context).colorScheme.primary,
              unselectedLabelColor: Colors.black,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              padding: EdgeInsets.all(25),
            ),

            fit: StackFit.expand,
            icon: (width, height) => Center(
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: null,
                icon: Icon(
                  Icons.arrow_upward_rounded,
                  color: Colors.blue,
                  size: width,
                ),
              ),
            ),
            borderRadius: BorderRadius.circular(18),
            duration: Duration(seconds: 1),
            curve: Curves.decelerate,
            showIcon: true,
            width: MediaQuery.of(context).size.width * 0.8,
            //barColor: colors[currentPage].computeLuminance() > 0.5 ? Colors.black : Colors.white,
            barColor: Color(0xffF0E8EB),

            start: 2,
            end: 0,
            offset: 10,
            barAlignment: Alignment.bottomCenter,
            iconHeight: 35,
            iconWidth: 35,
            reverse: false,
            barDecoration: BoxDecoration(
              color: colors[currentPage],
              borderRadius: BorderRadius.circular(500),
            ),
            iconDecoration: BoxDecoration(
              color: colors[currentPage],
              borderRadius: BorderRadius.circular(500),
            ),
            hideOnScroll: true,
            scrollOpposite: false,
            onBottomBarHidden: () {},
            onBottomBarShown: () {},
            body: (context, controller) => TabBarView(
              controller: tabController,
              dragStartBehavior: DragStartBehavior.down,
              physics: const BouncingScrollPhysics(),
              children: [
                ContactListScreen(),
                CreateContactScreen(),
                ContactListFullScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
