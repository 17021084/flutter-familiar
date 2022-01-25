import 'package:flutter/material.dart';

class CardName extends StatelessWidget {
  const CardName({Key? key}) : super(key: key);

  handlePress() {
    print("12312");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: const CircleAvatar(
            radius: 48,
            backgroundImage: NetworkImage(
                "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/mg7hzw3astat1wezn5xe"),
          ),
        ),
        Container(
            alignment: Alignment.bottomLeft,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Tran Van A ",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "Viet Namdasdasdasdasdsii sdasdasdasdsdasdasdasdssdasdasdasdsdasdasdasdsdasdasdasddasdasdasdsdasdasdasd",
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 12),
                ),
                // TouchAbleOpacityButton( handleOnPress: handlePress ),
              ],
            ))
      ],
    );
  }
}
