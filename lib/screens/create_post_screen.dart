import 'package:flutter/material.dart';

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
