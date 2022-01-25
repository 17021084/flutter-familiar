import 'package:flutter/material.dart';

class TouchAbleOpacityButton extends StatefulWidget {
  // pass function
  final Function handleOnPress;

  const TouchAbleOpacityButton({Key? key, required this.handleOnPress})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TouchAbleOpacityButtonState();
  }
}

class TouchAbleOpacityButtonState extends State<TouchAbleOpacityButton> {
  bool isTappedDown = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.handleOnPress();
      },
      onTapDown: (tapDownDetails) {
        print(tapDownDetails);
        setState(() {
          isTappedDown = true;
        });
      },
      onTapUp: (tapUpdetails) {
        setState(() {
          isTappedDown = false;
        });
      },
      child: Text(
        'Flat Button',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: isTappedDown ? Colors.black.withOpacity(0.5) : Colors.black),
      ),
    );
  }
}
