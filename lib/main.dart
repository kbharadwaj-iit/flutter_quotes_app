import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Wisdom()));
}

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  List quotes = [
    "Embrace the uncertainty of life, for within the chaos lies the beauty of unexpected possibilities.",
    "In the symphony of existence, every individual note contributes to the melody of your unique journey.",
    "Courage is not the absence of fear but the triumph over it, turning obstacles into stepping stones.",
    "Time is the artist, and our experiences are the canvas upon which it paints the masterpiece of our lives.",
    "The key to unlocking doors of success is often found in the persistence to turn every setback into a comeback.",
    "In the garden of kindness, even the smallest act is a flourishing bloom that adds fragrance to the world.",
    "The river of creativity flows within us all; only those who dare to dip their toes will discover its endless depths.",
    "Chase your dreams with the fervor of a shooting star, leaving trails of inspiration for others to follow.",
    "In the dance of life, every misstep is a chance to learn a new move and create a more beautiful choreography.",
    "The pages of today's story are written with the ink of choices; make each word count, for it shapes your narrative."
  ];
  int _counter = 0;

  void _showQuote() {
    setState(() {
      Random random = new Random();
      _counter = random.nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
           
        children: <Widget>
        [
          Spacer(),
          Container(
            child: Center(
              child: Text(quotes[_counter],
              style: TextStyle(color: Colors.grey.shade800
              ,fontStyle: FontStyle.italic,
              fontSize: 20
              ),
              ),
            ),
            width: 400,
            height: 200,
            margin: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(14.2)
            ),
          ),
          
          Padding(padding: const EdgeInsets.only(top: 9.0)),
          Divider(thickness: 3,),
          ElevatedButton.icon(
                  icon: Icon(Icons.lightbulb),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.greenAccent.shade700,
                    
                    textStyle: const TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
                  ),
                  onPressed: _showQuote,
                  label: const Text('Inspire moi'),
                ),
                Spacer()
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )
      ),
    );
  }
}
