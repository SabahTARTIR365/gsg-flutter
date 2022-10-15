import 'package:flutter/material.dart';
import '/social_app/reposotories/dummy_data.dart';
import '/social_app/views/widgets/post_widget.dart';

class AllPostsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostWidget(posts[index]);
        });
  }
}