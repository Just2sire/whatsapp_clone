import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.7),
            ),
            // indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              SizedBox(
                width: context.width * 0.1,
                child: Tab(
                  child: SvgPicture.asset(
                    "assets/icons/people_icon.svg",
                    width: 23,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: context.width * 0.18,
                child: Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Disc.",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
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
                width: context.width * 0.18,
                child: Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Actus",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
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
                width: context.width * 0.18,
                child: Tab(
                  child: Row(
                    children: [
                      Text(
                        "Disc.",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
