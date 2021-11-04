
import 'package:flutter/material.dart';
import 'package:facebook/widgets/widgets.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: Column(
        children: <Widget>[
          PostCard(),
        ],
      ),
    );
  }
}
