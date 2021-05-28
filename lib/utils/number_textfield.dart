import 'package:flutter/cupertino.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CodePicker extends StatelessWidget {
  final Function code;
  final TextEditingController cnt;
  const CodePicker({Key key, this.code, this.cnt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return (Material(
        color: Colors.grey.shade300,
        borderRadius: BorderRadiusDirectional.circular(29),
        child: Container(
            height: 55,
            width: size.width * .8,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CountryCodePicker(
                    backgroundColor: Colors.transparent, //color of dialog box
                    dialogBackgroundColor: Colors.teal.shade800,
                    barrierColor: Colors.transparent, //border of dialog box
                    dialogTextStyle: TextStyle(color: Colors.white),
                    searchStyle: TextStyle(
                      color: Colors.white,
                    ),
                    closeIcon: Icon(Icons.close, color: Colors.black),
                    searchDecoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white)),
                    onChanged: code,

                    showFlag: true,
                    showFlagDialog: true,
                    showDropDownButton: false,
                    dialogSize: Size(size.width * 0.8, size.height * 0.7),
                    textStyle: TextStyle(
                        color: Colors.black, fontSize: 15), //number ka style
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: '+91',
                    favorite: ['+91', '+92'],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: size.width * .5,
                    //color: Colors.red,
                    child: TextFormField(
                      //validator: checker,
                      controller: cnt,
                      cursorColor: Colors.blue,
                      //obscureText: privacy,
                      keyboardType: TextInputType.phone,

                      decoration: InputDecoration(
                        hintText: "Enter Number",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ]))));
  }
}
