import 'package:flutter/material.dart';
import 'ShowAppBar.dart';
import 'ShowBasicInformation.dart';
import 'ShowConclusion.dart';
import 'ShowMethods.dart';
import 'ShowPdf.dart';
import 'ShowSummary.dart';

Future<void> main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: ShowAppBar(),
        ),
        body: SplitView(),
      ),
    );
  }
}

class SplitView extends StatefulWidget {
  @override
  _SplitViewState createState() => _SplitViewState();
}

class _SplitViewState extends State<SplitView> {
  bool _showFigure = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _showFigure
            ? Flexible(
                flex: 40,
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    color: Colors.grey.shade200,
                    child: Column(
                      children: [
                        Card(
                          color: Colors.lightBlueAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Figures"),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _showFigure = !_showFigure;
                                    });
                                  },
                                  icon: Image.network(
                                    "/assets/聚合.png",
                                    width: 48.0,
                                    height: 48.0,
                                    fit: BoxFit.fill,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.snowmobile)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Card(
                                  child: Column(
                                children: [
                                  Card(
                                    child: Image(
                                      fit: BoxFit.contain,
                                      image: NetworkImage(
                                          "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"),
                                    ),
                                  ),
                                  Center(child: Text("Figure1")),
                                  Center(child: Text("A brief description of the illustration")),
                                ],
                              )),
                              Card(
                                  child: Column(
                                children: [
                                  Card(
                                    child: Image(
                                      fit: BoxFit.contain,
                                      image: NetworkImage(
                                          "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"),
                                    ),
                                  ),
                                  Center(child: Text("Figure2")),
                                  Center(child: Text("A brief description of the illustration")),
                                ],
                              )),
                              Card(
                                  child: Column(
                                children: [
                                  Card(
                                    child: Image(
                                      width: double.infinity,
                                      fit: BoxFit.contain,
                                      image: NetworkImage(
                                          "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"),
                                    ),
                                  ),
                                  Center(child: Text("Figure3")),
                                  Center(child: Text("A brief description of the illustration")),
                                ],
                              )),
                              Card(
                                  child: Column(
                                children: [
                                  Card(
                                    child: Image(
                                      width: double.infinity,
                                      fit: BoxFit.contain,
                                      image: NetworkImage(
                                          "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"),
                                    ),
                                  ),
                                  Center(child: Text("Figure3")),
                                  Center(child: Text("A brief description of the illustration")),
                                ],
                              )),
                              Card(
                                  child: Column(
                                children: [
                                  Card(
                                    child: Image(
                                      width: double.infinity,
                                      fit: BoxFit.contain,
                                      image: NetworkImage(
                                          "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"),
                                    ),
                                  ),
                                  Center(child: Text("Figure3")),
                                  Center(child: Text("A brief description of the illustration")),
                                ],
                              )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : Flexible(
                flex: 3,
                child: Card(
                  color: Colors.grey.shade200,
                  child: Container(
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              _showFigure = !_showFigure;
                            });
                          },
                          icon: Image.network(
                            "/assets/末端左右展开.png",
                            width: 48.0,
                            height: 48.0,
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                )),
        Flexible(
          flex: 40,
          child: ShowPdf(),
        ),
        Flexible(
          flex: 60,
          child: Card(
            color: Colors.grey.shade200,
            child: ListView(
              children: [
                ShowBasicInformation(),
                ShowSummary(),
                ShowMethods(),
                ShowConclusion(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
