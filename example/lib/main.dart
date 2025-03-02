import 'package:animated_stack/animated_stack.dart';
import 'package:example/helpers/icon_tile.dart';
import 'package:example/helpers/item_placeholder.dart';
import 'package:flutter/material.dart';

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
        // Button Properties
        buttonIcon: Icons.add,
        fabIconColor: Colors.white,
        // Animation Properties
        animateButton: true,
        slideAnimationDuration: Duration(milliseconds: 600),
        buttonAnimationDuration: Duration(milliseconds: 100),
        // Theme Properties
        backgroundColor: Color(0xff321B4A),
        fabBackgroundColor: Color(0xffEB456F),
        // Content Widgets
        foregroundWidget: _getForegroundWidget(),
        columnWidget: _getColumnWidget(),
        bottomWidget: _getBottomWidget(),
        // Controllers
        enableClickToDismiss: true,
        preventForegroundInteractions: true,
        onForegroundCallback: () => print('on Close Callback'),
      ),
    );
  }

  Widget _getForegroundWidget() {
    return Container(
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
    );
  }

  Widget _getColumnWidget() {
    return Column(
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
    );
  }

  Widget _getBottomWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff645478),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      width: 260,
      height: 50,
    );
  }
}
