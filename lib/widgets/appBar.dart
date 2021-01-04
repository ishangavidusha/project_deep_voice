import 'package:flutter/material.dart';
import 'package:project_deep_voice/widgets/appMainLogo.dart';
import 'package:project_deep_voice/widgets/kbutton.dart';

class DeepDesktopAppBar extends StatefulWidget {
  @override
  _DeepDesktopAppBarState createState() => _DeepDesktopAppBarState();
}

class _DeepDesktopAppBarState extends State<DeepDesktopAppBar> {
  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    double devHeight = MediaQuery.of(context).size.height;
    return Container(
      width: devWidth,
      child: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DeepMainLogo(),
            SizedBox(
              width: 20,
            ),
            Spacer(),
            KButton(
              text: 'About',
              onPressed: () {
                print('Go to about page');
              },
            ),
            SizedBox(
              width: 20,
            ),
            KButton(
              text: 'Log In / Sing Up',
              onPressed: () {
                print('Go to Log In page');
              },
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}


class DeepMobileAppBar extends StatefulWidget {
  @override
  _DeepMobileAppBarState createState() => _DeepMobileAppBarState();
}

class _DeepMobileAppBarState extends State<DeepMobileAppBar> {
  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    double devHeight = MediaQuery.of(context).size.height;
    return Container(
      width: devWidth,
      child: Column(
        children: [
          AppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: DeepMainLogo(),
          ),
          KButton(
            text: 'About',
            onPressed: () {
              print('Go to about page');
            },
          ),
          KButton(
            text: 'Log In / Sing Up',
            onPressed: () {
              print('Go to Log In page');
            },
          ),
        ],
      ),
    );
  }
}