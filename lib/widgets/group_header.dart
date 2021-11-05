
import 'package:facebook/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GroupHeader extends StatelessWidget {
  const GroupHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Groups', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Row(
                  children: <Widget>[
                    CircleButton(
                        onPressed: (){},
                        icon: Icon(Icons.add_circle, color: Colors.black,),
                      backgroundColor: Colors.grey.shade300,
                      radius: 20,
                    ),
                    CircleButton(
                      onPressed: (){},
                      icon: Icon(Icons.settings, color: Colors.black,),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Chip(
                    label: const Text('For You',style: TextStyle(color: Colors.blue),),
                    avatar: const Icon(Icons.person, color: Colors.blue,),
                  backgroundColor: Colors.blue.shade50,
                ),
                const Chip(
                  label: Text('Your Groups',),
                  avatar: Icon(Icons.group, ),
                ),
                const Chip(
                  label:  Text('Discover',),
                  avatar: Icon(MdiIcons.findReplace, ),
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
                    return Container(
                      margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue
                      ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
