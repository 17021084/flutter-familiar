import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            GestureDetector(
              onTap: _resetCounter,
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    // border: Border(
                    //   top: BorderSide(width: 10, color: Colors.red),
                    //   bottom: BorderSide(width: 10, color: Colors.red),
                    //   left: BorderSide(width: 10, color: Colors.red),
                    //   right: BorderSide(width: 10, color: Colors.red),
                    // ),
                    border: Border.all(color: Colors.yellow, width: 30),
                    borderRadius: BorderRadius.circular(13)),
                child: Text("Reset"),
              ),
            ),
            FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: "Decrement",
                child: const Icon(Icons.remove)),
            CardName(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CardName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: const CircleAvatar(
            radius: 48,
            backgroundImage: NetworkImage(
                "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/mg7hzw3astat1wezn5xe"),
          ),
        ),
        Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "Trang Van A",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )
          ],
        ))
      ],
    );
  }
}
