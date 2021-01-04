import 'package:flutter/material.dart';

class KButton extends StatefulWidget {
  final Function onPressed;
  final String text;

  const KButton({Key key, this.onPressed, this.text}) : super(key: key);

  @override
  _KButtonState createState() => _KButtonState();
}

class _KButtonState extends State<KButton> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            selected = true;
          });
        },
        onExit: (event) {
          setState(() {
            selected = false;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: selected ? Colors.blue.withOpacity(0.2) : Colors.black.withOpacity(0.2),
                spreadRadius: 4,
                blurRadius: 10,
                offset: Offset(0, 3)
              )
            ]
          ),
          child: FlatButton(
            onPressed: widget.onPressed,
            child: Text(
              widget.text,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                letterSpacing: 1.2,
              ),
            ),
            textTheme: ButtonTextTheme.primary,
            textColor: Colors.white,
            color:selected ? Colors.blue : Colors.black,
            clipBehavior: Clip.antiAlias,
            disabledColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
      ),
    );
  }
}