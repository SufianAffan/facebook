import 'package:flutter/material.dart';
import 'package:facebook/widgets/widgets.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            VideoHeader(),
             Post(
              username: 'Sufian',
              timeAgo: '6h',
              postText: 'MDIs version is based on their icons quantity, which does not strictly respect semver guide. They do try their best to keep icons in same name between minor releases but name changing may still appear. ',
              postImage: 'assets/images/img.png',
            ),
             Post(
              username: 'Sufian',
              timeAgo: '6h',
              postText: 'MDIs version is based on their icons quantity, which does not strictly respect semver guide. They do try their best to keep icons in same name between minor releases but name changing may still appear. ',
              postImage: 'assets/images/img.png',
            ),
          ],
        ),
      ),
    );
  }
}
