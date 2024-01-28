import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:homework25_january/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  bool iconIsActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(color: Color(0xFF0F3774)),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: Image.asset(
                "assets/images/widgetIcon.png",
                color: const Color(0xFF0F3774),
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  iconIsActive = !iconIsActive;
                });
              },
              icon: Icon(
                Icons.notifications,
                color: iconIsActive == false
                    ? const Color(0xFF0F3774)
                    : const Color(0xFFC21010),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const ProfilePage();
              },
            ),
          );
        },
        shape: const OvalBorder(),
        backgroundColor: const Color(0xFF0F3774),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          CupertinoIcons.home,
          CupertinoIcons.wind,
          CupertinoIcons.money_dollar_circle,
          CupertinoIcons.profile_circled,
        ],
        activeIndex: activeIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        activeColor: Colors.blue,
        onTap: (p0) {
          setState(
            () {
              activeIndex = p0;
            },
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi Jenifer!",
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0F3774)),
            ),
            const Text(
              "Good Morning",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SearchBar(
                leading: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    CupertinoIcons.search,
                    size: 30,
                    color: Color(0xFF62739F),
                  ),
                ),
                hintText: "Search",
                textStyle: MaterialStatePropertyAll(
                  TextStyle(
                    color: Color(0xFF62739F),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xFF62739F), width: 3),
                      borderRadius: BorderRadius.circular(14)),
                  child: SizedBox(
                    height: 100,
                    child: Expanded(
                      child: Row(
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Welcome!"),
                                  Text("Let's schedule your\nprogress"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Image.asset(
                                  "assets/images/officeworkImage.png"))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              "Ongoing Project",
              style: TextStyle(
                  color: Color(0xFF0F3774),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                dragStartBehavior: DragStartBehavior.start,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        container("May 32 2022", Icons.computer, "Mobile App"),
                        container("May 32 2022", Icons.dashboard, "Dashboard"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        container(
                            "May 32 2022", CupertinoIcons.bandage, "Banner"),
                        container(
                            "May 32 2022", Icons.add_chart_outlined, "UI/UX"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        container("May 32 2022", Icons.computer, "Mobile App"),
                        container("May 32 2022", Icons.dashboard, "Dashboard"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        container(
                            "May 32 2022", CupertinoIcons.bandage, "Banner"),
                        container(
                            "May 32 2022", Icons.add_chart_outlined, "UI/UX"),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }

  bool containerIsActive = false;

  Widget container(String text, icon, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 150,
        height: 130,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          radius: 35,
          splashColor: const Color(0xFF62739F),
          onTap: () {
            setState(
              () {
                containerIsActive = !containerIsActive;
              },
            );
          },
          child: Center(
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: containerIsActive == false
                    ? const Color(0xFFD1D8EC)
                    : const Color(0xFF0F3774),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20, top: 20),
                        child: Text(
                          text,
                          style: TextStyle(
                              fontSize: 10,
                              color: containerIsActive == false
                                  ? Colors.black
                                  : Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Icon(
                          Icons.menu,
                          color: containerIsActive == false
                              ? Colors.black
                              : Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 5),
                        child: Icon(
                          icon,
                          color: containerIsActive == false
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color: containerIsActive == false
                                ? Colors.black
                                : Colors.white),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Progress",
                      style: TextStyle(
                        fontSize: 13,
                        color: containerIsActive == false
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: LinearProgressIndicator(
                      semanticsLabel: "LAbel",
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
