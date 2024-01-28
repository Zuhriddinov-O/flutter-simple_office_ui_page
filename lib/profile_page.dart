import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(20),
                child: Container(
                  height: 270,
                  color: const Color(0xFF0F3774),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 50,
                          foregroundImage: NetworkImage(
                              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.XSZAFm-5JI7nriDLwZqRQQHaE7%26pid%3DApi&f=1&ipt=6ea480ab61ec92edad9b945cd9e99da1953555ed3eeeb2ed35e8c99377b365de&ipo=images"),
                        ),
                      ),
                      Text(
                        "Richard A.Bachmann",
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          "UI/UX Designer",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("75k",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text("followers",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: [
                              Text("16k",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text("followings",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: [
                              Text("600",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text("Projects",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Folders",
                  style: TextStyle(
                      color: Color(0xFF0F3774),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Skip all",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  container("text", Icons.folder_copy_outlined, "Dribble Shots"),
                  container("text", Icons.folder_copy_sharp, "Dribble Shots"),
                  container("text", Icons.folder_delete, "Dribble Shots"),
                  container("text", Icons.folder_delete_outlined, "Dribble Shots"),
                  container("text", Icons.folder_open_outlined, "Dribble Shots"),
                  container("text", Icons.folder, "Dribble Shots"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "My Team",
                  style: TextStyle(
                      color: Color(0xFF0F3774),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Skip all",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
                listTile(),
              ],
            ),
          )
        ],
      ),
    );
  }

  bool containerIsActive = false;

  Widget container(String text, icon, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
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
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: containerIsActive == false
                  ? const Color(0xFFD1D8EC)
                  : const Color(0xFF000000),
            ),
            width: 180,
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: Icon(
                        icon,
                        color: containerIsActive == false
                            ? Colors.black
                            : Colors.white
                          ,size: 30,
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 15,
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listTile() {
    return CupertinoListTile.notched(
      onTap: () {},
      title: const Text("Cupertino"),
      leading: IconButton(
        onPressed: () {},
        icon: const CircleAvatar(
          maxRadius: 30,
          backgroundColor: Colors.blueGrey,
          child: Icon(Icons.shopping_bag_outlined),
        ),
      ),
      subtitle: const Text("Subtitle"),
      trailing: CircleAvatar(
        radius: 13,
        foregroundImage: NetworkImage(
            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.XSZAFm-5JI7nriDLwZqRQQHaE7%26pid%3DApi&f=1&ipt=6ea480ab61ec92edad9b945cd9e99da1953555ed3eeeb2ed35e8c99377b365de&ipo=images"),
      ),
    );
  }
}
