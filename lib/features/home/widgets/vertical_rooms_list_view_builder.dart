import 'package:flutter/material.dart';
import 'package:holla/features/home/models/room_model.dart';
import 'package:holla/features/home/widgets/vertical_rooms_list_item.dart';

class VerticalRoomsListViewBuilder extends StatelessWidget {
  const VerticalRoomsListViewBuilder({
    super.key,
    required this.rooms,
    required this.screenWidth,
    required this.screenHight,
  });

  final List<RoomModel> rooms;
  final double screenWidth;
  final double screenHight;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: rooms.length,
      itemBuilder: (context, index) {
        return VerticalRoomsListItem(
            index: index + 1,
            screenWidth: screenWidth,
            screenHight: screenHight,
            roomModel: rooms[index]);
      },
    );
  }
}
