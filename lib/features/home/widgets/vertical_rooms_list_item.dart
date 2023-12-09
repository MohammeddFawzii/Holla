import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:holla/features/home/models/room_model.dart';

class VerticalRoomsListItem extends StatelessWidget {
  const VerticalRoomsListItem({
    super.key,
    required this.screenHight,
    required this.screenWidth,
    required this.roomModel,
    required this.index,
  });

  final double screenHight;
  final double screenWidth;
  final RoomModel roomModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () {
          log("${index}tapped");
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(roomModel.image!), fit: BoxFit.cover),
            color: Colors.amber,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          height: screenHight * 0.2,
          width: screenWidth,
        ),
      ),
    );
  }
}
