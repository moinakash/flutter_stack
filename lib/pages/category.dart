import 'package:flutter/material.dart';


class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),

      ),
      body: LayoutBuilder(

        builder: (context, BoxConstraints constraints){

          return Container(

            color: Colors.transparent,

            alignment: Alignment.bottomLeft,

            child: Container(

              height: constraints.maxHeight*0.7,

              width: constraints.maxWidth/2,

              color: Colors.deepPurple,

            ),
          );
        }

      )
    );
  }
}

/*Container(


alignment: Alignment.bottomLeft,

child: Container(

width: constraints.maxWidth/2,

color: Colors.deepPurple,


),
),*/
