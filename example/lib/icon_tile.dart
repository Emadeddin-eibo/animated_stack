import 'package:flutter/material.dart';

class IconTile extends StatelessWidget {
  final double width;
  final double height;
  final IconData iconData;

  const IconTile({Key key, this.width, this.height, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xff645478),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Icon(
        iconData,
        color: Color(0xffAEA6B6),
      ),
    );
  }
}
