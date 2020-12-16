import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class PdfViewer extends StatefulWidget {
  final String pdf;
  final Text topic;

  PdfViewer({@required this.pdf, @required this.topic});

  @override
  _PdfViewerState createState() => _PdfViewerState(pdf, topic);
}

class _PdfViewerState extends State<PdfViewer> {
  // String url =
  // 'https://github.com/nawodyaonline/note_app/blob/main/assets/test.pdf';
  // String pdfasset = "assets/test.pdf";
  String pdfasset;
  final Text topic;
  _PdfViewerState(this.pdfasset, this.topic);

  PDFDocument _doc;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromAsset(pdfasset);
    // final doc = await PDFDocument.fromURL(url);
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(pdfasset);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1a237e),
        title: topic,
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : PDFViewer(
              document: _doc,
              indicatorBackground: Colors.blue[800],
            ),
    );
  }
}
