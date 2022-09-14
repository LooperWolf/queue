import 'package:flutter/material.dart';
import 'package:queue/grpc/grpc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Queue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _queue;
  int _currentQueue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Current Queue',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black54,
                ),
                height: 500,
                width: 400,
                child: Center(
                  child: Text(
                    _currentQueue.toString(),
                    style: const TextStyle(fontSize: 60, color: Colors.white),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black26,
                      )),
                  height: 200,
                  width: 400,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 1000),
                    reverseDuration: const Duration(milliseconds: 50),
                    child: _yourQueue(),
                  )),
            ],
          ),
        ),
        Align(
          alignment: Alignment(0.5, 0),
          child: Container(
              margin: const EdgeInsets.only(top: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black26,
                  )),
              height: 200,
              width: 400,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 1000),
                reverseDuration: const Duration(milliseconds: 50),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    grpc.UpdateQueue();
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Move Queue Up',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              )),
        ),
      ],
    )));
  }

  @override
  void initState() {
    super.initState();
    grpc.start().then((value) async {
      grpc.StreamQueue().listen((value) {
        print(value);
        setState(() => _currentQueue = value.queue);
      });
    });
  }

  bool _queueing = false;
  Widget _yourQueue() {
    if (_queue == null) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () async {
          if (_queueing) return;
          _queueing = true;
          final buf = await grpc.GetQueue();
          setState(() {
            _queue = buf;
          });
          _queueing = false;
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Text(
              'Take Your Queue',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
      );
    }
    return Column(children: [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Your Queue',
          style: TextStyle(fontSize: 40),
        ),
      ),
      Expanded(
        child: Center(
          child: Text(
            _queue.toString(),
            style: const TextStyle(fontSize: 60),
          ),
        ),
      )
    ]);
  }
}
