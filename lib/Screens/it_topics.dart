import 'package:flutter/material.dart';
import '../models/main_topic.dart';

class ItList extends StatelessWidget {
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
              mainTopic: '1.1 Basic Building Blocks of Information',
              pdfLink: 'assets/ict_1_1.pdf',
            ),
            TopicCard(
              mainTopic: '1.2 The need of manage data and information',
              pdfLink: 'assets/ict_1_2.pdf',
            ),
            TopicCard(
              mainTopic: '1.3 Abstract Model of Information ',
              pdfLink: 'assets/ict_1_3.pdf',
            ),
            TopicCard(
              mainTopic: '1.4 Basic Components of a Computer System ',
              pdfLink: 'assets/ict_1_4.pdf',
            ),
            TopicCard(
              mainTopic: '1.5 Data Processing Life Cycle',
              pdfLink: 'assets/ict_1_5.pdf',
            ),
            TopicCard(
              mainTopic: '1.6 Investigates the use of ICT',
              pdfLink: 'assets/ict_1_6.pdf',
            ),
            TopicCard(
              mainTopic: '1.7 Evaluates the Impact of ICT on the Society',
              pdfLink: 'assets/ict_1_7.pdf',
            ),
            TopicCard(
              mainTopic: '4.1 Basic Digital Logic Gates s',
              pdfLink: 'assets/ict_4_1.pdf',
            ),
            TopicCard(
              mainTopic: '6.1 The Computer Operating System',
              pdfLink: 'assets/ict_6_1.pdf',
            ),
            TopicCard(
              mainTopic: '6.2 File Systems',
              pdfLink: 'assets/ict_6_2.pdf',
            ),
            TopicCard(
              mainTopic: '6.3 Operating Systems and processes',
              pdfLink: 'assets/ict_6_3.pdf',
            ),
            TopicCard(
              mainTopic: '7.1 Problem Solving Process',
              pdfLink: 'assets/ict_7_1.pdf',
            ),
          ],
        ),
      ),
    );
  }
}
