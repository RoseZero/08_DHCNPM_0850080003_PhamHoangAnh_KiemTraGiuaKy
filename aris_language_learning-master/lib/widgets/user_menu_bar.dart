import 'package:flutter/material.dart';
import 'package:language_learning_ui/constants.dart';

class UserMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile.png"),
          radius: 25.0,
          backgroundColor: Colors.transparent,
        ),
        SizedBox(
          width: 15.0,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Hello,\n",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromRGBO(152, 156, 173, 1),
                ),
              ),
              TextSpan(
                text: "Jenifer. Pham",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Constants.primaryTextColor,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        IconButton(
          icon: Icon(
            Icons.doorbell,
            color: Constants.primaryTextColor,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
