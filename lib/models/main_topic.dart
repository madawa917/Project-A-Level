import 'package:flutter/material.dart';
import 'package:note_app/Screens/pdf_viewer.dart';

class TopicCard extends StatelessWidget {
  final String mainTopic;
  final String pdfLink;

  TopicCard({@required this.mainTopic, this.pdfLink});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      shadowColor: Colors.blue[900],
      elevation: 10,
      child: FlatButton(
        height: 50,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PdfViewer(
                pdf: pdfLink,
                topic: Text(mainTopic),
              ),
            ),
          );
        },
        child: Row(
          children: [
            Icon(
              Icons.book,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              mainTopic,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
