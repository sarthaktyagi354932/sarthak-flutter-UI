import 'package:aman/color.dart';
import 'package:aman/screen/Avatar.dart';
import 'package:aman/screen/Awards.dart';
import 'package:aman/screen/Earning.dart';
import 'package:aman/screen/start.dart';
import 'package:aman/screen/zone.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _BodyState();
}

class _BodyState extends State<HomePage> {
  int currentIndex = 0;
  // List<Widget> widgetList = [

  // ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              "GULLY BALL",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: TextColor,
                  fontFamily: 'RobotoMono'),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_sharp,
                    size: 35,
                  )),
              SizedBox(
                width: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  radius: 20.0,
                ),
              )
            ],
            bottom: TabBar(

                //  isScrollable: true,
                enableFeedback: false,
                labelColor: color1,
                unselectedLabelColor: color2,
                indicatorColor: indicatorColor1,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                unselectedLabelStyle: TextStyle(fontSize: 14),
                tabs: [
                  Tab(
                    text: "Zone",
                  ),
                  Tab(
                    text: "Earnings",
                  ),
                  Tab(text: "Start"),
                  Tab(text: "Awards"),
                  Tab(text: "Acatar"),
                ])),
        body: TabBarView(children: [
          ZoneScreen(),
          Earning(),
          Start(),
          Awards(),
          Avatar(),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          enableFeedback: false,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
              color: const Color.fromARGB(255, 228, 175, 17), size: 30),
          unselectedIconTheme: IconThemeData(color: Colors.grey, size: 24),
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
