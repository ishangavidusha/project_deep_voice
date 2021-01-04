import 'package:flutter/material.dart';
import 'package:project_deep_voice/util/kLayoutBuilder.dart';
import 'package:project_deep_voice/widgets/appBar.dart';
import 'package:project_deep_voice/widgets/speechNavWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    double devHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: devHeight * 0.65,
                    width: devWidth,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SpeechNavWidget(),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 400,
                          child: Text(
                            'Deep Lanka Voice is to help teach machines how real people speak.',
                            style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.black.withOpacity(0.8)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: KLayoutBuilder(
              desktopChild: DeepDesktopAppBar(),
              mobileChild: DeepMobileAppBar(),
            ),
          ),
        ],
      ),
    );
  }
}