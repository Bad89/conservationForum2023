// lib/widgets/post_widget.dart
import 'package:flutter/material.dart';

import "../models/post.dart"

class PostWidget extends StatelessWidget {
  final Post post;

  PostWidget({required this.post});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.title),
      subtitle: Text(post.content),
    );
  }
}
