import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int selectedItem = 0;

List<IconData> icons = [
  FontAwesomeIcons.plane,
  FontAwesomeIcons.bed,
  FontAwesomeIcons.walking,
  FontAwesomeIcons.biking
];

class BuildIcon extends StatefulWidget {
  final int index;

  const BuildIcon({Key key, this.index}) : super(key: key);

  @override
  _BuildIconState createState() => _BuildIconState(index);
}

class _BuildIconState extends State<BuildIcon> {
  final int index;

  _BuildIconState(this.index);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: selectedItem == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          icons[index],
          size: 25,
          color: selectedItem == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }
}
