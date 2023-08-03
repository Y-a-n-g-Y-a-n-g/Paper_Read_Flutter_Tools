import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class ShowPdf extends StatefulWidget {
  @override
  State<ShowPdf> createState() => _ShowPdfState();
}

class _ShowPdfState extends State<ShowPdf> {
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.lightBlueAccent,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.zoom_in,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      _pdfViewerController.zoomLevel =
                          _pdfViewerController.zoomLevel + 0.1;
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.zoom_in_map_outlined,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      _pdfViewerController.zoomLevel = 1.35;
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.zoom_out,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      _pdfViewerController.zoomLevel =
                          _pdfViewerController.zoomLevel - 0.1;
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.fullscreen,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      _pdfViewerController.zoomLevel =
                          _pdfViewerController.zoomLevel - 0.1;
                    },
                  ),
                ],
              ),
              Expanded(
                child: SfPdfViewer.network(
                  'http://172.28.80.1:14251/chfs/shared/CD5XQWH3/LeCun 等 - 2015 - Deep learning.pdf',
                  controller: _pdfViewerController,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}