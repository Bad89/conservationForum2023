import 'package:flutter/material.dart';
import '../screens/create_post_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forum App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LESTARI Forum On MAINTENANCE WAIT MINUTE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/Screen Shot 2023-10-10 at 18.22.20.png', // Replace with the path to your image asset
              width: 150, // Adjust the width as needed
              height: 150, // Adjust the height as needed
            ),
            SizedBox(height: 20), // Add some spacing
            Text(
              'Welcome to the LESTARI Forum!',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '<ON MAINTENANCE 404>',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'LEstari Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'LEstariCreate Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'LEstariProfile',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            // Navigate to CreatePostScreen when the "Create Post" tab is tapped
            navigateToCreatePost(context);
          }
        },
      ),
    );
  }
}

class CreatePostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Text fields for entering post title and content
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
            ),
            SizedBox(height: 16.0),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(labelText: 'Content'),
            ),
            SizedBox(height: 16.0),

            // Button to submit the post
            ElevatedButton(
              onPressed: () {
                // Handle the submission of the post here
                // You can use a Riverpod provider to handle the submission logic
              },
              child: Text('Submit Post'),
            ),
          ],
        ),
      ),
    );
  }
}

void navigateToCreatePost(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => CreatePostScreen(),
    ),
  );
}
