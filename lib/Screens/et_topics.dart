import 'package:flutter/material.dart';
import 'package:note_app/models/main_topic.dart';

class EtList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            TopicCard(
              mainTopic: '1.ET introdunction',
              pdfLink: 'assets/et_2.pdf',
            ),
            TopicCard(
              mainTopic: '2. Basic Electronic',
              pdfLink: 'assets/et1.pdf',
            ),
          ],
        ),
      ),
    );
  }
}
