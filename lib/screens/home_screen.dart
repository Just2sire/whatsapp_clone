import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:status_view/status_view.dart';
import 'package:whatsapp_clone/data/user_profile_data.dart';
import 'package:whatsapp_clone/models/providers/theme_provider.dart';
import 'package:whatsapp_clone/utils/build_context_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void changeTheme(context) {
    context.read<ThemeProvider>().toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      animationDuration: const Duration(milliseconds: 600),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
            ),
            PopupMenuButton(
              position: PopupMenuPosition.under,
              splashRadius: 0.5,
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              ),
              color: context.watch<ThemeProvider>().isLigth()
                  ? Colors.white
                  : const Color(0xff202C33),
              itemBuilder: (context) => <PopupMenuItem>[
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Nouveau groupe",
                    style: TextStyle(
                      color: context.primary,
                      fontSize: 14,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Nouvelle diffusion",
                    style: TextStyle(
                      color: context.primary,
                      fontSize: 14,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(
                    "Appareils connectés",
                    style: TextStyle(
                      color: context.primary,
                      fontSize: 14,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text(
                    "Message importants",
                    style: TextStyle(
                      color: context.primary,
                      fontSize: 14,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text(
                    "Paramètres",
                    style: TextStyle(
                      color: context.primary,
                      fontSize: 14,
                    ),
                  ),
                ),
                PopupMenuItem(
                  onTap: () async {
                    context.read<ThemeProvider>().toggleTheme();
                  },
                  value: 6,
                  child: Text(
                    "Theme",
                    style: TextStyle(
                      color: context.primary,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            indicatorColor: context.watch<ThemeProvider>().isLigth()
                ? Colors.white
                : const Color(0xff00A884),
            dividerColor: const Color(0xff00A884),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: context.unselectedTab,
            labelColor: context.tertiary,
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.white12),
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: context.primary,
            ),
            // indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: SizedBox(
                  width: context.width * 0.05,
                  child: const Icon(Icons.people),
                  // child: SvgPicture.asset(
                  //   "assets/icons/people_icon.svg",
                  //   width: 23,
                  //   color: Colors.white,
                  // ),
                ),
              ),
              SizedBox(
                width: context.width * 0.212,
                child: Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Disc."),
                      Container(
                        width: context.width * 0.05,
                        // height: context.width * 0.05,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.tertiary,
                        ),
                        child: Text(
                          "10",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            color: context.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: context.width * 0.212,
                child: Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Actus", textAlign: TextAlign.center),
                      Container(
                        width: context.width * 0.02,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.tertiary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: context.width * 0.212,
                child: const Tab(
                  child: Text("Appels.", textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          viewportFraction: 1.0,
          children: [
            const Center(
              child: Text(
                "Hello World",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            const DiscussionTabBarView(),
            const ActuTabBarView(),
            ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  users[index].username,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActuTabBarView extends StatelessWidget {
  const ActuTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ColoredBox(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            SizedBox(
              height: context.height * 0.22,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width * 0.037,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Statut",
                          style: TextStyle(
                            color: context.primary,
                            fontSize: 24,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert_outlined,
                            color: context.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.15,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: status(context, 15),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.width * 0.037,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Statut",
                        style: TextStyle(
                          color: context.primary,
                          fontSize: 24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert_outlined,
                          color: context.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DiscussionTabBarView extends StatelessWidget {
  const DiscussionTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(
                vertical: context.height * 0.01,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width * 0.03,
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(users[index].img),
                    ),
                  ),
                  SizedBox(
                    width: context.width * 0.77,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              users[index].username,
                              style: TextStyle(
                                color: context.primary,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              context.lastConnectionDate(
                                users[index].lastMessagedate,
                              ),
                              style: TextStyle(
                                  fontSize: 10, color: context.primary),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                (index % 3) == 0
                                    ? SvgPicture.asset(
                                        "assets/icons/check_icon.svg",
                                        color: Colors.grey,
                                        width: context.width * 0.05,
                                      )
                                    : SvgPicture.asset(
                                        "assets/icons/double_check_icon.svg",
                                        color: Colors.blue,
                                        width: context.width * 0.05,
                                      ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: context.width * 0.03),
                                  child: Text(
                                    users[index].lastMessage.length > 33
                                        ? '${users[index].lastMessage.substring(0, 33)}...'
                                        : users[index].lastMessage,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: context.width * 0.05,
                              padding: EdgeInsets.all(context.width * 0.009),
                              // height: context.width * 0.05,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  // color: context.tertiary,
                                  color: Color(0xff25D366)),
                              child: Text(
                                "10",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: context.primary,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
        //   ListTile(
        // title: Text(
        //   users[index].username,
        //   style: const TextStyle(color: Colors.white, fontSize: 20),
        // ),
        // subtitle: Row(
        //   children: [
        //     Icon(
        //       Icons.check,
        //       size: context.width * 0.05,
        //     ),
        //     Text(
        //       users[index].lastMessage.length > 33
        //           ? '${users[index].lastMessage.substring(0, 33)}...'
        //           : users[index].lastMessage,
        //     ),
        //   ],
        // ),
        //     leading: CircleAvatar(
        //       radius: 50,
        //       backgroundImage: AssetImage(users[index].img),
        //     ),
        //     contentPadding: EdgeInsets.symmetric(
        //       horizontal: 0,
        //       vertical: context.height * 0.005,
        //     ),
        //     titleAlignment: ListTileTitleAlignment.threeLine,
        //     style: ListTileStyle.drawer,
        //     // titleTextStyle: TextStyle(
        //     //   fontSize: 20
        //     // ),
        //   ),
        );
  }
}

List<Widget> status(BuildContext context, int number) {
  return List<Widget>.generate(
    number,
    (index) {
      return index == 0
          ?
          // Padding(
          //   padding: EdgeInsets.only(left: context.width * 0.05),
          //   child: Stack(
          //     children: [
          //       const Positioned(
          //         child: CircleAvatar(
          //           radius: 30,
          //           backgroundImage: NetworkImage("https://korii.slate.fr/sites/default/files/styles/1440x600/public/chris-ried-ieic5tq8ymk-unsplash.jpg"),
          //         ),
          //       ),
          //       Positioned(
          //         left: 40,
          //         child: Container(
          //           width: 25,
          //           alignment: Alignment.center,
          //           decoration: BoxDecoration(
          //             color: context.secondary,
          //             shape: BoxShape.circle
          //           ),
          //           child: IconButton(
          //             onPressed: () {},
          //             icon: Icon(
          //               Icons.add_rounded,
          //               color: Colors.white,
          //               ),
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // )
          const Text("")
          : Padding(
              padding: index == 1
                  ? EdgeInsets.only(
                      left: context.width * 0.035, right: context.width * 0.020)
                  : EdgeInsets.symmetric(horizontal: context.width * 0.020),
              child: StatusView(
                radius: 30,
                spacing: 4,
                strokeWidth: 2,
                indexOfSeenStatus: 2,
                numberOfStatus: 12,
                padding: 1.6,
                centerImageUrl:
                    "https://korii.slate.fr/sites/default/files/styles/1440x600/public/chris-ried-ieic5tq8ymk-unsplash.jpg",
                seenColor: Colors.grey,
                unSeenColor: context.secondary,
              ),
            );
    },
  );
}
