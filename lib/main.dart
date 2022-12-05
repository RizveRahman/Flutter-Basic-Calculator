import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget  {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var textField1 = TextEditingController();
  var textField2 = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Calculator')),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextField(
                keyboardType: TextInputType.number,
                controller: textField1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: textField2,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(textField1.text.toString());
                      var no2 = int.parse(textField2.text.toString());
                      var add = no1 + no2;

                      setState(() {
                        result = "The Addition of $no1 and $no2 is: $add";
                      });

                    }, child: Text('Add')),

                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(textField1.text.toString());
                      var no2 = int.parse(textField2.text.toString());
                      var sub = no1 - no2;

                      setState(() {
                        result = "The Subtraction of $no1 and $no2 is: $sub";
                      });
                    }, child: Text('Sub')),

                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(textField1.text.toString());
                      var no2 = int.parse(textField2.text.toString());
                      var sub = no1 * no2;

                      setState(() {
                        result = "The Multiplication of $no1 and $no2 is: $sub";
                      });
                    }, child: Text('Mult')),

                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(textField1.text.toString());
                      var no2 = int.parse(textField2.text.toString());
                      var sub = no1 / no2;

                      setState(() {
                        result = "The Division of $no1 and $no2 is: $sub";
                      });
                    }, child: Text('Div')),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(result, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      )
    );
  }
}
