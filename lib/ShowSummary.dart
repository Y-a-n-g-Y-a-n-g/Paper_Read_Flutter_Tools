import 'ShowItemInfo.dart';
import 'package:flutter/material.dart';

class ShowSummary extends StatefulWidget {
  const ShowSummary({
    super.key,
  });

  @override
  State<ShowSummary> createState() => _ShowSummaryState();
}

class _ShowSummaryState extends State<ShowSummary> {
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
                    child: Text("Summary",
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
                        ShowPaperDetailInformation(
                          textTitle: 'Research Background',
                          textValue:
                              "Ultrasound imaging has advantages in medical diagnosis such as high spatial resolution, real-time imaging, and non-invasiveness. Recently, 3D US has attracted attention as a valuable imaging tool for a diagnostic procedure.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Research Object',
                          textValue:
                              "The authors focus on the freehand protocol for 3D US acquisition because of its cost-effectiveness and flexibility.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Problem to overcome',
                          textValue:
                              "The quality of 3D volume data depends on the accuracy of probe localization, i.e., 3D motion estimation of a 2D US probe in the acquisition protocol with freehand scanning.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Past methods',
                          textValue:
                              "Previous methods have used external tracking, such as electromagnetic or inertial-optical tracking, or camera-based methods.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Problems with them',
                          textValue:
                              "External tracking requires additional hardware, while camera-based approaches have limitations in tracking the probe in real-time or in difficult imaging conditions.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Proposed method',
                          textValue:
                              "The authors propose a novel method for probe localization using reference images that is not dependent on external tracking or complicated imaging setups.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Improvement',
                          textValue:
                              "The proposed method shows promising results in terms of accuracy and is applicable in various clinical settings.",
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
