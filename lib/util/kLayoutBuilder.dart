import 'package:flutter/material.dart';

class KLayoutBuilder extends StatelessWidget {
  final Widget desktopChild;
  final Widget mobileChild;

  const KLayoutBuilder({Key key, this.desktopChild, this.mobileChild}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (MediaQuery.of(context).size.width > 800) {
          return desktopChild;
        } else {
          return mobileChild;
        }
      },
    );
  }
}