import 'package:flutter/material.dart';

import 'SearchWidget.dart';

class ShowAppBar extends StatelessWidget {
  const ShowAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: [
          Text('Paper Quick View'),//Paper Quick View论文量子波动阅读工具
          SizedBox(width: 20),
          ChangeLanguage(),
          SizedBox(width: 20),
          Expanded(child: SearchWidget()),
          SizedBox(width: 10),
          IconButton(
            tooltip: 'Upload paper PDF',
            onPressed: () {},
            icon: Icon(Icons.cloud_upload),
          ),
          SizedBox(width: 20),
          IconButton(
            tooltip: '上一个',
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          SizedBox(width: 10),
          IconButton(
            tooltip: 'reading list',
            onPressed: () {},
            icon: Icon(Icons.list),
          ),
          SizedBox(width: 10),
          IconButton(
            tooltip: '下一个',
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
          ),
          SizedBox(width: 20),
          IconButton(
            tooltip: 'save to Zotero',
            onPressed: () {},
            icon: Image.network(
              "/assets/zotero_48x48x32.png",
              width: 48.0,
              height: 48.0,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 20),
          IconButton(
            tooltip: 'save to Mendeley',
            onPressed: () {},
            icon: Image.network(
              "/assets/mendeley_48x48.png",
              width: 48.0,
              height: 48.0,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              // 这里可以处理点击事件
            },
            child: Material(
              color: Colors.transparent,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // 这里可以处理IconButton的点击事件
                    },
                    child: Row(
                      children: [
                        Icon(Icons.people),
                        Text('Sign in'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  int _language = 1;

  void _onLanguageChanged(int value) {
    setState(() {
      _language = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("English"),
        Radio(
          activeColor: Colors.yellowAccent,
          hoverColor: Colors.red,
          value: 1,
          groupValue: _language,
          onChanged: (int? value) {
            _onLanguageChanged(value!);
          },
        ),
        SizedBox(
          width: 20,
        ),
        Text("Chinese"),
        Radio(
          hoverColor: Colors.red,
          activeColor: Colors.yellowAccent,
          value: 2,
          groupValue: _language,
          onChanged: (int? value) {
            _onLanguageChanged(value!);
          },
        ),
        Text("Korean"),
        Radio(
          hoverColor: Colors.red,
          activeColor: Colors.yellowAccent,
          value: 3,
          groupValue: _language,
          onChanged: (int? value) {
            _onLanguageChanged(value!);
          },
        ),
      ],
    );
  }
}
