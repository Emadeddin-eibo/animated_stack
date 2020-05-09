import 'package:animated_stack/animated_stack.dart';
import 'package:flutter/material.dart';
import 'icon_tile.dart';
import 'item_placeholder.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Stack Demo',
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: AnimatedStack(
        backgroundColor: Color(0xff321B4A),
        fabBackgroundColor: Color(0xffEB456F),
        foregroundWidget: Container(
          decoration: BoxDecoration(
            color: Color(0xff56377C),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 30,
                offset: Offset(4, 4),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ItemPlaceholder();
            },
          ),
        ),
        columnWidget: Column(
          children: <Widget>[
            IconTile(
              width: 100,
              height: 60,
              iconData: Icons.share,
            ),
            SizedBox(height: 20),
            IconTile(
              width: 60,
              height: 60,
              iconData: Icons.image,
            ),
            SizedBox(height: 20),
            IconTile(
              width: 60,
              height: 60,
              iconData: Icons.camera_alt,
            ),
          ],
        ),
        bottomWidget: Container(
          decoration: BoxDecoration(
            color: Color(0xff645478),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          width: 260,
          height: 50,
        ),
      ),
    );
  }
}
