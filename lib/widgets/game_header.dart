
import 'package:facebook/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GameHeader extends StatelessWidget {
  const GameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Games', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Row(
                  children: <Widget>[
                    CircleButton(
                      onPressed: (){},
                      icon: Icon(Icons.person, color: Colors.black,),
                      backgroundColor: Colors.grey.shade300,
                      radius: 20,
                    ),
                    CircleButton(
                      onPressed: (){},
                      icon: Icon(Icons.search, color: Colors.black,),
                      backgroundColor: Colors.grey.shade300,
                      radius: 20,
                    ),

                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Chip(
                  label: const Text('For You',style: TextStyle(color: Colors.blue),),
                  avatar: const Icon(MdiIcons.facebookGaming, color: Colors.blue,),
                  backgroundColor: Colors.blue.shade50,
                ),
                const Chip(
                  label: Text('Games',),
                  avatar: Icon(MdiIcons.gamepadCircle, ),
                ),

              ],
            ),
          ),
          const Divider(),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index)
                  {
                    if(index == 0)
                      {
                        return const Icon(Icons.access_time);
                      }

                    return const Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.0),
                      child: CircleAvatar(),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
