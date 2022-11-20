import 'package:adeel/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class QuizScreen extends StatefulWidget {
   QuizScreen({Key? key, required this.table,  }) : super(key: key);
int table;
  @override
  State<QuizScreen> createState() => _QuizScreenState(table);
}
class _QuizScreenState extends State<QuizScreen> {
 _QuizScreenState(this.tablenumber){
   print('the $tablenumber');
 }
 int tablenumber;
@override
  void initState() {

    super.initState();
  }
bool visible2 = false;
bool visible3 = false;
bool visible4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
            child:Column(
        children: [
            Text('$tablenumber x 3 = '),
            Row(
              children: [
                TextButton(child: Text('${tablenumber*5}'),
                onPressed: (){
                Fluttertoast.showToast(msg: 'Wrong answer');
                setState(() {
                  visible2 = true;
                });
                },),
                TextButton(child: Text('${tablenumber*3}'),
                  onPressed: (){
                    Fluttertoast.showToast(msg: 'Correct answer');
                    setState(() {
                      visible2 = true;
                    });
                  },),
                TextButton(child: Text('${tablenumber*2}'),
                  onPressed: (){
                    Fluttertoast.showToast(msg: 'Wrong answer');
                    setState(() {
                      visible2 = true;
                    });
                  },),
                TextButton(child: Text('${tablenumber*6}'),
                  onPressed: (){
                    Fluttertoast.showToast(msg: 'Wrong answer');
                    setState(() {
                      visible2 = true;
                    });
                  },)
              ],
            ),])

        ),
            Visibility(
              visible: visible2,
              child: Container(
                  child:Column(
                      children: [
                        Text('$tablenumber x 5 = '),
                        Row(
                          children: [
                            TextButton(child: Text('${tablenumber*5}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Correct answer');
                                setState(() {
                                  visible3 = true;
                                });
                              },),
                            TextButton(child: Text('${tablenumber*3}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Wrong answer');
                                setState(() {
                                  visible3 = true;
                                });
                              },),
                            TextButton(child: Text('${tablenumber*1}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Wrong answer');
                                setState(() {
                                  visible3 = true;
                                });
                              },),
                            TextButton(child: Text('${tablenumber*9}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Wrong answer');
                                setState(() {
                                  visible3 = true;
                                });
                              },)
                          ],
                        ),])

              ),
            ),Visibility(
              visible: visible3,
              child: Container(
                  child:Column(
                      children: [
                        Text('$tablenumber x 7 = '),
                        Row(
                          children: [
                            TextButton(child: Text('${tablenumber*2}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Wrong answer');
                                setState(() {
                                  visible4 = true;
                                });
                              },),
                            TextButton(child: Text('${tablenumber*4}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Wrong answer');
                                setState(() {
                                  visible4 = true;
                                });
                              },),
                            TextButton(child: Text('${tablenumber*6}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Wrong answer');
                                setState(() {
                                  visible4 = true;
                                });
                              },),
                            TextButton(child: Text('${tablenumber*7}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Correct answer');
                                setState(() {
                                  visible4 = true;
                                });
                              },)
                          ],
                        ),])

              ),
            ),Visibility(
              visible: visible4,
              child: Container(
                  child:Column(
                      children: [
                        Text('$tablenumber x 9 = '),
                        Row(
                          children: [
                            TextButton(child: Text('${tablenumber*5}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Wrong answer');

                              },),
                            TextButton(child: Text('${tablenumber*3}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Wrong answer');

                              },),
                            TextButton(child: Text('${tablenumber*9}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Correct answer');

                              },),
                            TextButton(child: Text('${tablenumber*6}'),
                              onPressed: (){
                                Fluttertoast.showToast(msg: 'Wrong answer');

                              },)
                          ],
                        ),])

              ),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));}, child: Text('Regenerate Table'))
    ]
      ),
      ));
  }
}
