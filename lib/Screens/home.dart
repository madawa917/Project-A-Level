import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue[900], //change your color here
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Select your subject category',
          style: TextStyle(
            color: Colors.blue[800],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Card(
                shadowColor: Colors.blue,
                elevation: 30,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Image.asset(
                  'images/category_img.jpg',
                  height: 250,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Card(
              color: Colors.blue[900],
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ict');
                },
                child: Text(
                  'Information Communicatin Technology',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.blue[900],
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/et');
                },
                child: Text(
                  'Engineering Technology',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.blue[900],
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sft');
                },
                child: Text(
                  'Science For Technology',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/message');
        },
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        backgroundColor: Colors.pink[400],
      ),
    );
  }
}
