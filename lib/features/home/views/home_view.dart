import 'package:flutter/material.dart';
import 'package:holla/core/Utils/app_colors.dart';
import 'package:holla/core/Utils/app_images.dart';
import 'package:holla/features/games/views/games_view.dart';
import 'package:holla/features/home/widgets/home_view_body.dart';
import 'package:holla/features/messages/views/messages_view.dart';
import 'package:holla/features/profile/views/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const id = 'HomeView';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    currentIndex = views.length - 1;
  }

  List<Widget> views = [
    const ProfileView(),
    const MessagesView(),
    const GamesView(),
    const HomeViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          height: screenHight * 0.12,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.appPrimaryColors400,
                AppColors.appInformationColors700
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              stops: [0.0, 0.8],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.add_circle_outline)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.manage_search_rounded)),
          IconButton(
            onPressed: () {},
            icon: const Image(image: AssetImage(AppImages.prizeIcon)),
          ),
          SizedBox(
            width: screenWidth * 0.25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: screenWidth * 0.12,
                  child: const Text(
                    "مجاورون",
                    style: TextStyle(fontFamily: "Hayah", fontSize: 20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: screenWidth * 0.12,
                    child: const Text(
                      " شعبي",
                      style: TextStyle(fontFamily: "Hayah", fontSize: 22),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: screenWidth * 0.12,
                  child: const Text(
                    "متعلق",
                    style: TextStyle(fontFamily: "Hayah", fontSize: 20),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      //________________________________

      body: SafeArea(child: views[currentIndex]),

      //________________________________________________
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: screenHight * 0.12,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.appPrimaryColors400,
                  AppColors.appInformationColors700
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                stops: [0.0, 0.8],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          BottomNavigationBar(
              backgroundColor: Colors.transparent,
              unselectedLabelStyle: const TextStyle(
                  color: AppColors.appInformationColors200,
                  fontFamily: "Hayah",
                  fontSize: 16),
              selectedLabelStyle: const TextStyle(
                  color: AppColors.appInformationColors900,
                  fontFamily: "Questv1",
                  fontSize: 16),
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              selectedItemColor: AppColors.appInformationColors300,
              unselectedItemColor: AppColors.appInformationColors100,
              items: [
                BottomNavigationBarItem(
                  icon: SizedBox(
                      width: screenWidth * 0.12,
                      child: Image.asset(AppImages.profileIcon)),
                  label: "الحساب",
                  activeIcon: SizedBox(
                      width: screenWidth * 0.14,
                      child: Image.asset(AppImages.profileIcon)),
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                      width: screenWidth * 0.12,
                      child: Image.asset(AppImages.messagesIcon)),
                  label: "الرسائل",
                  activeIcon: SizedBox(
                      width: screenWidth * 0.14,
                      child: Image.asset(AppImages.messagesIcon)),
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                      width: screenWidth * 0.12,
                      child: Image.asset(AppImages.gamesIcon)),
                  label: "الالعاب",
                  activeIcon: SizedBox(
                      width: screenWidth * 0.14,
                      child: Image.asset(AppImages.gamesIcon)),
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                      width: screenWidth * 0.12,
                      child: Image.asset(AppImages.homeIcon)),
                  label: "الرئيسية",
                  activeIcon: SizedBox(
                      width: screenWidth * 0.14,
                      child: Image.asset(AppImages.homeIcon)),
                ),
              ]),
        ],
      ),
    );
  }
}
