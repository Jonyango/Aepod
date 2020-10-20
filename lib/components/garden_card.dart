import 'package:flutter/material.dart';

class GardenCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                "Charlie's Garden"
              ),
              Text('ID:1344295024'),
            ]
          ),
          RawMaterialButton(
            onPressed: (){print('Begin Again');},
            child: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff0C9359),
              ),
            shape: CircleBorder(),
            )
        ],),

    );
  }
}