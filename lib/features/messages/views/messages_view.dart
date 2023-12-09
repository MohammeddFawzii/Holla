import 'package:flutter/material.dart';
import 'package:holla/features/messages/widgets/messages_view_body.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});
  static const id = 'MessagesView';

  @override
  Widget build(BuildContext context) {
    return const MessagesViewBody();
  }
}
