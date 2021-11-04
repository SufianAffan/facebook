import 'package:flutter/material.dart';
import 'widgets.dart';

class PostCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 10.0, left: 10.0 , right: 10.0),
            child: Row(
              children: <Widget>[
                const CircleAvatar(),
                const SizedBox(width: 10,),
                OutlinedButton(
                    onPressed: (){

                    },
                    child: const Text("What's on your mind?", style: TextStyle(color: Colors.black),),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(size.width - 70, 45)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                PostButton(
                    onPress: (){

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.video_call, color: Colors.red,),
                        SizedBox(width: 3.0,),
                        Text('Live')
                      ],
                    ),
                  buttonSize: const Size(80,25),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                Container(
                  width: 1.0,
                  height: 30,
                  color: Colors.grey.shade300,
                ),
                PostButton(
                  onPress: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(Icons.photo_library_sharp, color: Colors.green,),
                      SizedBox(width: 3.0,),
                      Text('Photos')
                    ],
                  ),
                  buttonSize: const Size(80,25),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                Container(
                  width: 1.0,
                  height: 30,
                  color: Colors.grey.shade300,
                ),
                PostButton(
                  onPress: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(Icons.video_call, color: Colors.purple,),
                      SizedBox(width: 3.0,),
                      Text('Room')
                    ],
                  ),
                  buttonSize: const Size(80,25),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
