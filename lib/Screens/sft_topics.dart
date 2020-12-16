import 'package:flutter/material.dart';
import 'package:note_app/models/main_topic.dart';

class SftList extends StatelessWidget {
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
              mainTopic: '1. Industrial Chemistry',
              pdfLink: 'assets/sft_1.pdf',
            ),
            TopicCard(
              mainTopic: '1.2 Force',
              pdfLink: 'assets/sft_2.pdf',
            ),
          ],
        ),
      ),
    );
  }
}
