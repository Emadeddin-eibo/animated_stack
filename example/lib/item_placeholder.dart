import 'package:flutter/material.dart';

class ItemPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipOval(
            child: Container(
              width: 60,
              height: 60,
              color: Color(0xff9783A9),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xff6D528D),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: _RowPlaceholder(color: 0xffA597B4),
                      width: MediaQuery.of(context).size.width * 2 / 5,
                    ),
                    _RowPlaceholder(color: 0xff846CA1),
                    _RowPlaceholder(color: 0xff846CA1),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _RowPlaceholder extends StatelessWidget {
  final int color;

  const _RowPlaceholder({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}
