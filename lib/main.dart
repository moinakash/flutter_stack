import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_stack/pages/category.dart';
import 'package:flutter_stack/pages/wallpaper.dart';

void main() {
  runApp(
      MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
            primarySwatch: Colors.blue,
            ),
            home: Home(),
            )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool _visible = true;

  bool inner_visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(


        alignment: Alignment.bottomLeft,
        child: Stack(

          children: [

            Positioned(



              child: Container(

                decoration: BoxDecoration(color: Colors.amber),

              ),
            ),

            Positioned(




              child: Visibility(

                visible: inner_visible,

                child: Align(

                  alignment: Alignment.bottomCenter,

                  child: Container(




                    decoration: BoxDecoration(color: Colors.blueAccent),
                    constraints: BoxConstraints(maxHeight: 200 , maxWidth: double.infinity),
                  ),
                ),
              ),
            ),


            Positioned(





              child: Visibility(

                visible: _visible,

                child: Padding(

                  padding: EdgeInsets.only(bottom: 100),

                  child: Align(

                    alignment: Alignment.bottomCenter,


                    child: Container(



                      height: 200,
                      width: 200,

                      color: Colors.green,


                      child: Align(


                        alignment: Alignment.bottomCenter,

                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,


                          children: [


                            Container(

                              height: 50,
                              width: 50,

                              child: RaisedButton(



                                onPressed: (){
                                  setState(() {

                                    inner_visible = !inner_visible;

                                  });
                                },

                              ),
                            ),

                            SizedBox(height: 20,),

                            Container(

                              height: 50,
                              width: 50,

                              child: RaisedButton(



                                onPressed: (){
                                  setState(() {

                                    inner_visible = !inner_visible;

                                  });
                                },

                              ),
                            ),



                          ],


                        ),
                      )



                    ),
                  ),
                ),
              ),
            ),

            Positioned(







                child: Align(

                  alignment: Alignment.bottomCenter,


                  child: RaisedButton(
                    onPressed: (){

                      setState(() {

                        _visible = !_visible;

                      });

                    },
                  ),
                ),
              ),




          ],

        ),

      )

    );
  }
}
