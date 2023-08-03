import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunch(uri.toString())) {
    await launch(uri.toString());
  } else {
    throw 'Could not launch $uri';
  }
}
//编写一个控件,接收两个参数,一个是字符串参数textValue,一个是包含了多个字符串的列表textAuthors,接收这些参数并使用row遍历显示出来
class ShowAuthors extends StatelessWidget {
  final String textValue;
  final List<String> textAuthors;

  const ShowAuthors({
    Key? key,
    required this.textValue,
    required this.textAuthors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SelectableText(
          textValue,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          textAlign: TextAlign.left,
        ),
        Row(
          children: textAuthors.map((e) {
            return Wrap(children: [
              ShowTextAndLink(
                textLink: 'https://www.google.com',
                textValue: e,
              ),
              Text(" ")
            ]);
          }).toList(),
        ),
      ],
    );
  }
}
class ShowTextAndLink extends StatelessWidget {
  final String textLink;
  final String textValue;

  const ShowTextAndLink({
    Key? key,
    required this.textLink,
    required this.textValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: textValue,
        style: TextStyle(
          fontSize: 12,
          color: Colors.lightBlueAccent.shade400,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            _launchURL(textLink);
          },
      ),
    );
  }
}

//接收两个字符串参数,一个是TextTitle,一个是Textvalue
class ShowPaperDetailInformation extends StatelessWidget {
  final String textTitle;
  final String textValue;

  const ShowPaperDetailInformation({
    Key? key,
    required this.textTitle,
    required this.textValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      TextSpan(children: [
        TextSpan(
            text: textTitle + ' ',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.red)),
        TextSpan(
          text: textValue,
          style: TextStyle(color: Colors.blueAccent, fontSize: 12),
        ),
      ]),
    );
  }
}
//接收两个字符串参数,一个是TextTitle,一个是Textvalue
class ShowPaperBasicInformation extends StatelessWidget {
  final String textTitle;
  final String textValue;

  const ShowPaperBasicInformation({
    Key? key,
    required this.textTitle,
    required this.textValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SelectableText(
          textTitle,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          textAlign: TextAlign.left,
        ),
        SelectableText(
          textValue,
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}