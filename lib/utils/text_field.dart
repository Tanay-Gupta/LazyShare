import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon, suffixicon;
  final bool privacy;
  final TextInputType keybord;
  final Function checker;
  final TextEditingController cnt;
  const RoundedTextField(
      {Key key,
      this.keybord,
      this.cnt,
      this.checker,
      this.text,
      this.color,
      this.privacy,
      this.icon,
      this.suffixicon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      borderRadius: BorderRadius.circular(29),
      color: Colors.grey.shade300,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height: 60,
        width: size.width * .8,
        child: TextFormField(
          validator: checker,
          controller: cnt,
          cursorColor: color,
          obscureText: privacy,
          keyboardType: keybord,
          decoration: InputDecoration(
              hintText: text,
              border: InputBorder.none,
              icon: Icon(
                icon,
                color: color,
              ),
              suffixIcon: Icon(
                suffixicon,
                color: color,
              )),
        ),
      ),
    );
  }
}
