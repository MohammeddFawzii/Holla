


import 'package:flutter/material.dart';
import 'package:holla/features/home/models/room_model.dart';
import 'package:holla/features/home/views/all_rooms_view.dart';
import 'package:holla/features/home/widgets/gradient_rounded_container.dart';
import 'package:holla/features/home/widgets/horezintal_rooms_list_view_builder.dart';

class HorezintalSection extends StatelessWidget {
  const HorezintalSection({
    super.key,
    required this.screenWidth,
    required this.screenHight,
    required this.rooms,
  });

  final double screenWidth;
  final double screenHight;
  final List<RoomModel> rooms;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GradientRoundedContainer(
        colorOne: Colors.pink.withOpacity(0.3),
        colorTwo: Colors.pink.withOpacity(0),
        screenWidth: screenWidth,
        screenHeight: screenHight * 0.15,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AllRoomsView.id);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.arrow_back, color: Colors.pink),
                      Text("الكل",
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 16,
                              fontFamily: "Questv1")),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8, top: 8),
                child: Text("قد تكون مهتماً",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 16,
                        fontFamily: "Questv1")),
              ),
            ],
          ),
          HorezintalRoomsListViewBuilder(
              screenHight: screenHight,
              rooms: rooms,
              screenWidth: screenWidth),
        ],
      )
    ]);
  }
}
