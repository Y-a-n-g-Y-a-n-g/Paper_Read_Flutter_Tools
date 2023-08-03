import 'ShowItemInfo.dart';
import 'package:flutter/material.dart';

class ShowMethods extends StatefulWidget {
  const ShowMethods({
    super.key,
  });

  @override
  State<ShowMethods> createState() => _ShowMethodsState();
}

class _ShowMethodsState extends State<ShowMethods> {
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
                  child: Text("Methods",
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
                      children: [
                        ShowPaperDetailInformation(
                          textTitle: 'Theoretical basis of the study',
                          textValue:
                              "The authors aim to improve the accuracy and applicability of probe localization for 3D US acquisition using freehand protocol without the need for additional hardware or complicated imaging situations.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Technical route of the article',
                          textValue:
                              "The authors proposed a novel method for probe localization using reference images that is not dependent on external tracking or complicated imaging setups.\nThey employed a Convolutional Neural Network (CNN) architecture consisting of localization and optical flow estimation networks for estimating the motion between two US images.\nResNet34 was employed for the localization network, and the encoder of FlowNetS was employed for the optical flow estimation network.\nThe feature vector extracted from ResNet34 is reduced to a 512-dimensional feature vector by Global Average Pooling (GAP). The feature vector extracted from FlowNetS is also reduced to a 512-dimensional feature vector by GAP and the fully-connected layer. Then, two feature vectors are concatenated before the last two fully-connected layers.\nThe output of CNN is 6 parameters consisting of 3 rotation angles (θx, θy, θz) and 3 translations (tx, ty, tz), where p = {θx, θy, θz, tx, ty, tz}.\nThe authors employed the loss function defined by the Euclidean distance between estimated 6 parameters and the ground truth to improve the accuracy of motion estimation.\nEvaluation and validation methods: The authors evaluated their proposed method using a dataset consisting of 14 subjects and compared their method's performance with that of external tracking methods and camera-based methods in terms of localization error.",
                        ),
                        ShowPaperDetailInformation(
                          textTitle: 'Parameters and configurations',
                          textValue:
                              "The authors employed ResNet34 for the localization network and the encoder of FlowNetS for the optical flow estimation network in their proposed CNN architecture. They also fixed all weight parameters of the pre-trained FlowNetS in both training and testing. The loss function was defined as the Euclidean distance between estimated parameters and the ground truth.",
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
