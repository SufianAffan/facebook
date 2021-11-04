import 'package:flutter/material.dart';
import 'widgets.dart';

class Post extends StatefulWidget {
  final String? userImage;
  final String? username;
  final String? timeAgo;
  final IconData? privacyIcon;
  final String? postText;
  final String? postImage;

  const Post({Key? key, this.userImage, this.username, this.timeAgo, this.privacyIcon, this.postText, this.postImage}) : super(key: key);


  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      width: MediaQuery.of(context).size.width,
      //height: 500,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(widget.userImage ?? 'assets/images/img.png'),
            ),
            title: Text(widget.username ?? ''),
            subtitle: Row(
              children:  <Widget>[
                Text(widget.timeAgo ?? ''),
                const Text(' . '),
                Icon(widget.privacyIcon ?? Icons.public, size: 20,)
              ],
            ),
            trailing: IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.more_horiz),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.postText ?? ''),
          ),
          Container(
            child: widget.postImage == null ? const SizedBox() :  Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.postImage!),
                    fit: BoxFit.fill
                  )
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children:const <Widget>[
                      Icon(Icons.thumb_up, color: Colors.blue,),
                      SizedBox(width: 2.0,),
                      Icon(Icons.emoji_emotions, color: Colors.yellow,),
                      SizedBox(width: 2.0,),
                      Text('2.5K')
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Text('303 Comments'),
                      Text(' . '),
                      Text('200 Shares'),
                    ],
                  )
                ],
              ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              PostButton(
                onPress: (){

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.thumb_up_alt_outlined, color: Colors.grey,),
                    SizedBox(width: 3.0,),
                    Text('Like')
                  ],
                ),
                buttonSize: const Size(80,25),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),

              PostButton(
                onPress: (){

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.mode_comment_outlined, color: Colors.grey,),
                    SizedBox(width: 3.0,),
                    Text('Comments')
                  ],
                ),
                buttonSize: const Size(80,25),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),

              PostButton(
                onPress: (){

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.share, color: Colors.grey,),
                    SizedBox(width: 3.0,),
                    Text('Share')
                  ],
                ),
                buttonSize: const Size(80,25),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
