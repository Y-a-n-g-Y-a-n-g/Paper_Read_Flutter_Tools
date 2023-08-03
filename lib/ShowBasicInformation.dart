import 'ShowItemInfo.dart';
import 'package:flutter/material.dart';

class ShowBasicInformation extends StatefulWidget {
  const ShowBasicInformation({
    super.key,
  });

  @override
  State<ShowBasicInformation> createState() => _ShowBasicInformationState();
}

class _ShowBasicInformationState extends State<ShowBasicInformation> {
  bool _isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Row(
            children: [
              Expanded(
                child: Center(
                    child: Text("Basic Information",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _isCollapsed = !_isCollapsed;
                  });
                },
                icon: Icon(
                    _isCollapsed ? Icons.arrow_drop_down : Icons.arrow_drop_up),
              )
            ],
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          padding: const EdgeInsets.all(3.0),
          child: _isCollapsed
              ? Card(
                  color: Colors.lightGreen.shade200,
                  child: Container(
                    height: 10,
                  ))
              : Card(
                  color: Colors.lightGreen.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //粗体SelectableText控件,粗体显示,靠左,10号字体
                        ShowPaperBasicInformation(
                          textTitle: 'Title',
                          textValue:
                              'Deep Learning-Based Localization of 2D Ultrasound Probe for Volume Reconstruction',
                        ),

                        ShowAuthors(
                          textValue: 'Authors',
                          textAuthors: [
                            "K. Miura",
                            "T. Tanaka",
                            " K. Ito",
                            "T. Sugimoto",
                            "Y. Kobayashi"
                          ],
                        ),
                        ShowPaperBasicInformation(
                          textTitle: 'Affiliation',
                          textValue: 'Tokyo Institute of Technology',
                        ),
                        ShowPaperBasicInformation(
                          textTitle: 'Keywords',
                          textValue:
                              'ultrasound, volume reconstruction, CNN, probe localization',
                        ),
                        ShowAuthors(
                          textValue: 'Link',
                          textAuthors: [
                            "DoiLink",
                            "WOS LINK",
                            "Google Scholar",
                            "Baidu Scholar",
                            "References",
                            "Quoted"
                          ],
                        ),
                        ShowPaperBasicInformation(
                          textTitle: 'Citations',
                          textValue: '100',
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
