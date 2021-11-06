
import 'package:facebook/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             const  Text('Menu',  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              CircleButton(
                onPressed: (){},
                icon: const Icon(Icons.search, color: Colors.black,),
                backgroundColor: Colors.grey.shade300,
                radius: 20,
              ),
            ],
          ),

          const ListTile(
            leading: CircleAvatar(),
            title: Text('Username'),
            subtitle: Text('See your profile'),
          )
        ],
      ),
    );
  }
}
