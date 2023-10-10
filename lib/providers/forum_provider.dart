// lib/providers/forum_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "../models/post.dart";

class ForumNotifier extends StateNotifier<List<Post>> {
  ForumNotifier() : super([]);

  // Add your forum-related logic here.
}

final forumProvider = StateNotifierProvider<ForumNotifier, List<Post>>((ref) {
  // Initialize and return your forum provider here.
  return ForumNotifier(); // Replace with your actual initialization logic.
});
