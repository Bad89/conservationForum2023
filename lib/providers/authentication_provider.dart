import 'package:flutter_riverpod/flutter_riverpod.dart';

final authenticationProvider = StateProvider<bool>((ref) => false);

// lib/providers/forum_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/post.dart';

final forumProvider = StateProvider<List<Post>>((ref) => []);