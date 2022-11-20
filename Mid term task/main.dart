import 'package:adeel/quiz%20screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adeel Shahid',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   double selectedvalue = 10;
   double slidervalue = 0;
   int tablevalue = 0;
   bool isvisible = false;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Text('Select a Table'),
            SizedBox(height: 10,),

            Text(slidervalue.toInt().toString()),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Slider(
              value: slidervalue,
              max: 100,
              divisions: 100,
              label: slidervalue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  slidervalue = value;
                });

              },
            ),
          ),
          Container(

            child: TextButton(
              child: Text('Generate'),
              onPressed: (){
                setState(() {

                  isvisible = true;
                  selectedvalue = slidervalue;
                });

              }
    )


                  ),


             Visibility(
               visible: isvisible,
               child: Container(
                child: Column(
                  children: [

                    Text('${selectedvalue.toInt()} x 1 = ${(selectedvalue*1).toInt()}' ),
                    Text('${selectedvalue.toInt()} x 2 = ${(selectedvalue*2).toInt()}' ),
                    Text('${selectedvalue.toInt()} x 3 = ${(selectedvalue*3).toInt()}' ),
                    Text('${selectedvalue.toInt()} x 4 = ${(selectedvalue*4).toInt()}' ),
                    Text('${selectedvalue.toInt()} x 5 = ${(selectedvalue*5).toInt()}' ),
                    Text('${selectedvalue.toInt()} x 6 = ${(selectedvalue*6).toInt()}' ),
                    Text('${selectedvalue.toInt()} x 7 = ${(selectedvalue*7).toInt()}' ),
                    Text('${selectedvalue.toInt()} x 8 = ${(selectedvalue*8).toInt()}' ),
                    Text('${selectedvalue.toInt()} x 9 = ${(selectedvalue*9).toInt()}' ),
                    Text('${selectedvalue.toInt()} x 10 = ${(selectedvalue*10).toInt()}' ),
                    SizedBox(height: 30,),
                    TextButton(onPressed: (){
                      print(selectedvalue);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuizScreen(table: selectedvalue.toInt()) ),

                      );
                    }, child: Text('Take Quiz'))
                  ],
                ),
            ),
             ),




          ]
        ),

      ),
    );
  }
}
