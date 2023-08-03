import 'package:flutter/material.dart';

import 'ShowItemInfo.dart';

class ShowConclusion extends StatefulWidget {
  const ShowConclusion({
    super.key,
  });

  @override
  State<ShowConclusion> createState() => _ShowConclusionState();
}

class _ShowConclusionState extends State<ShowConclusion> {
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
                  child: Text("Conclusion",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      )),
                ),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ShowPaperDetailInformation(
                          textTitle: 'Significance of the work',
                          textValue:
                              "The paper proposes a novel method for probe localization using reference images without external tracking or complicated imaging setups in freehand 3D ultrasound (US) reconstruction. This study is significant as probe localization accuracy is critical for quality 3D volume data.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Innovation point',
                          textValue:
                              "The authors employed a Convolutional Neural Network (CNN) architecture consisting of localization and optical flow estimation networks for the estimation of the 3D motion between two US images without the need for additional hardware or complicated imaging setups.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Performance',
                          textValue:
                              "The proposed method showed promising results in terms of accuracy and performed better than external tracking and camera-based methods in terms of localization error.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Workload',
                          textValue:
                              "The authors evaluated their proposed method using a dataset consisting of 14 subjects and compared their method's performance with that of external tracking methods and camera-based methods in terms of localization error.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Final Conclusion',
                          textValue:
                              "The proposed method is an innovative approach to probe localization in freehand 3D ultrasound reconstruction that does not require additional hardware or complicated imaging setups. The method shows promising results in terms of accuracy and is applicable in various clinical settings. This paper provides insightful information that could lead to improved accuracy and applicability of 3D US reconstruction in clinical settings.",
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
