import 'package:flutter/material.dart';
import 'package:facebook/widgets/widgets.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: SingleChildScrollView(
        child:  Column(
          children: <Widget>[
            PostCard(),
            const SizedBox(height: 8.0,),
            const RoomCard(),
            const StoryCard(),
            const Post(
              username: 'Sufian',
              timeAgo: '6h',
              postText: 'MDIs version is based on their icons quantity, which does not strictly respect semver guide. They do try their best to keep icons in same name between minor releases but name changing may still appear. ',
              postImage: 'assets/images/img.png',
            ),
            const Post(
              username: 'Sufian',
              timeAgo: '6h',
              postText: 'MDIs version is based on their icons quantity, which does not strictly respect semver guide. They do try their best to keep icons in same name between minor releases but name changing may still appear. ',
             // postImage: 'assets/images/img.png',
            ),
          ],
        ),
      )
    );
  }
}
