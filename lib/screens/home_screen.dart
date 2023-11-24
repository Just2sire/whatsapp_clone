import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/data/user_profile_data.dart';
import 'package:whatsapp_clone/utils/build_context_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      animationDuration: const Duration(milliseconds: 600),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Whatsapp",
            style: TextStyle(fontSize: 23),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
            PopupMenuButton(
              position: PopupMenuPosition.under,
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              ),
              color: const Color(0xff111B21),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Nouveau groupe",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 14),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Nouvelle diffusion",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 14),
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Appareils connectés",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 14),
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Message importants",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 14),
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Paramètres",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            indicatorColor: const Color(0xff00A884),
            dividerColor: const Color(0xff00A884),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.white,
            labelColor: const Color(0xff00A884),
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.white12),
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.7),
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
                        height: context.width * 0.05,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                          color: Color(0xff00A884),
                        ),
                        child: Text(
                          "10",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      )
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
                        // height: context.width * 0.05,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Color(0xff00A884),
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
            ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.symmetric(vertical: context.height * 0.01),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(right: context.width * 0.05),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(users[index].img),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                users[index].username,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    index % 3 == 0 ? Icons.check : Icons.check,
                                    size: context.width * 0.08,
                                    color: Colors.grey[700],
                                  ),
                                  Text(
                                    users[index].lastMessage.length > 33
                                        ? '${users[index].lastMessage.substring(0, 33)}...'
                                        : users[index].lastMessage,
                                  ),
                                ],
                              ),
                            ],
                          )
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
                ),
            ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  users[index].username,
                ),
              ),
            ),
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
