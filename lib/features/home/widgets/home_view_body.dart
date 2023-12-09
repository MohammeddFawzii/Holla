import 'package:flutter/material.dart';
import 'package:holla/core/Utils/app_images.dart';
import 'package:holla/features/home/models/room_model.dart';
import 'package:holla/features/home/widgets/horezintal_rooms_section.dart';
import 'package:holla/features/home/widgets/horizontal_event_slider.dart';

import 'sub_screens_section.dart';
import 'vertical_rooms_list_view_builder.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<dynamic> images = [
    const AssetImage(AppImages.event1),
    const AssetImage(AppImages.event2),
    const AssetImage(AppImages.event3),
    const AssetImage(AppImages.event4),
  ];

  List<RoomModel> rooms = [
    RoomModel(
        userImage: AppImages.p1, name: "Name", image: AppImages.roomImage2),
    RoomModel(
        userImage: AppImages.p3, name: "Name", image: AppImages.roomImage),
    RoomModel(
        userImage: AppImages.p1, name: "Name", image: AppImages.roomImage3),
    RoomModel(
        userImage: AppImages.p2, name: "Name", image: AppImages.roomImage2),
    RoomModel(
        userImage: AppImages.p3, name: "Name", image: AppImages.roomImage4),
    RoomModel(
        userImage: AppImages.p2, name: "Name", image: AppImages.roomImage),
    RoomModel(
        userImage: AppImages.p3, name: "Name", image: AppImages.roomImage3),
  ];
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HorizontalEventSlider(
                screenHight: screenHight,
                screenWidth: screenWidth,
                images: images),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SubScreensSection(
              screenHight: screenHight,
              screenWidth: screenWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HorezintalSection(
                screenWidth: screenWidth,
                screenHight: screenHight,
                rooms: rooms),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: VerticalRoomsListViewBuilder(
                rooms: rooms,
                screenWidth: screenWidth,
                screenHight: screenHight),
          )
        ],
      ),
    );
  }
}
