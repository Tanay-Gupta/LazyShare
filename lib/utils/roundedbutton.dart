import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function press;

  const CircularButton(
      {Key key, this.text, this.color, this.press, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
        color: color,
        borderRadius: BorderRadius.circular(29),
        child: InkWell(
          borderRadius: BorderRadius.circular(29),
          onTap: press,
          child: Container(
            alignment: Alignment.center,
            height: 60,
            width: size.width * .8,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),

              //Icon(Icons.send),
            ]),
          ),
        ));
  }
}
