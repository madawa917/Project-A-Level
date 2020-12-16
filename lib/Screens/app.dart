import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Container(
          child: Column(
            children: [
              Image.asset('images/homeBackground.png'),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Welcome to',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'A',
                    style: TextStyle(
                      color: Color(0xFF0C1C5D),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'LEVEL',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Here is the place you can meet \n together & Get learn together',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Text(''),
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Color(0xFF1a237e),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: Text('Get Start'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
