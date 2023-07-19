import 'package:auth/models/post.dart';
import 'package:auth/network/movie_service.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<Post> _posts = [];

  @override
  void initState() {
    _getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _posts.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(
                _posts[index].title,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue),
              ),
              Text(_posts[index].body),
            ],
          );
        },
      ),
    );
  }

  void _getPosts() async {
    _posts = await MovieApi().fetchPostss();
    setState(() {});
  }
}
