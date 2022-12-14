import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
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
  Timer loopUpdater;
  // double _screenWidth;
  double _screenHeight;
  Map<String, int> queueList = {};
  MediaQueryData get queryData => MediaQuery.of(context);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenHeight = queryData.size.height;
    // _screenWidth = queryData.size.width;
  }

  @override
  Widget build(BuildContext context) {
    return largeScreen();
  }

  Widget _queuelist() {
    final buf = queueList.entries.toList();
    buf.sort(
      (a, b) => a.value.compareTo(b.value),
    );
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(border: Border.all()),
      constraints: BoxConstraints(maxHeight: _screenHeight / 2),
      width: 200,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: Colors.purple[300],
              width: 200,
              child: const Text(
                "Current Queue List",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            for (var i = 0; i < queueList.length; i++)
              _queuelistRow(buf[i].key, buf[i].value, i)
          ],
        ),
      ),
    );
  }

  Widget _queuelistRow(String name, int queue, int index) {
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      color: index % 2 == 0 ? Colors.white : Colors.grey[300],
      child: Text(
        "$name: $queue",
        textAlign: TextAlign.center,
      ),
    );
  }

  // void _updateQueue() async {
  //   final buf = await grpc.getQueueList();
  //   queueList.clear();
  //   setState(() {
  //     queueList = buf;
  //   });
  // }

  Widget largeScreen() {
    return Scaffold(
        body: Center(
      child: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (queueList.isNotEmpty) _queuelist(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: _screenHeight,
                width: 200,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: const AutoSizeText(
                          'Current Queue',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black54,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            AutoSizeText(
                              _currentQueue.toString(),
                              maxLines: 1,
                              style: const TextStyle(
                                  fontSize: 100, color: Colors.white),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Column(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 6, right: 6),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            color: Colors.black26,
                                          )),
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: () {
                                          grpc.UpdateQueue();
                                        },
                                        child: const Icon(Icons.arrow_upward),
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 6, right: 6),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            color: Colors.black26,
                                          )),
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: () async {
                                          await grpc.resetQueue();
                                          final buf = await grpc.LoadQueue();
                                          setState(() {
                                            _currentQueue = buf.queue;
                                            queueList = buf.queuelist;
                                            _queue = null;
                                          });
                                        },
                                        child:
                                            const Icon(Icons.replay_outlined),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.black26,
                              )),
                          constraints: const BoxConstraints(
                            maxHeight: 100,
                          ),
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 1000),
                            reverseDuration: const Duration(milliseconds: 50),
                            child:
                                LayoutBuilder(builder: (context, constraint) {
                              return _yourQueue(constraint);
                            }),
                          )),
                    ),
                    // Flexible(
                    //   child: Container(
                    //       margin: const EdgeInsets.only(top: 20),
                    //       padding: const EdgeInsets.symmetric(horizontal: 20),
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(20),
                    //           border: Border.all(
                    //             color: Colors.black26,
                    //           )),
                    //       constraints: const BoxConstraints(
                    //         maxHeight: 100,
                    //       ),
                    //       child: AnimatedSwitcher(
                    //         duration: const Duration(milliseconds: 1000),
                    //         reverseDuration: const Duration(milliseconds: 50),
                    //         child: LayoutBuilder(builder: (context, constraint) {
                    //           return GestureDetector(
                    //             behavior: HitTestBehavior.opaque,
                    //             onTap: () async {
                    //               if (_queueing) return;
                    //               _queueing = true;
                    //               final buf = await grpc.GetQueue();
                    //               setState(() {
                    //                 _queue = buf;
                    //               });
                    //               _queueing = false;
                    //             },
                    //             child: Container(
                    //               alignment: Alignment.center,
                    //               width: constraint.maxWidth,
                    //               padding: const EdgeInsets.symmetric(
                    //                   vertical: 10, horizontal: 5),
                    //               child: const AutoSizeText(
                    //                 'Reset Queue',
                    //                 maxLines: 2,
                    //                 textAlign: TextAlign.center,
                    //                 style: TextStyle(fontSize: 40),
                    //               ),
                    //             ),
                    //           );
                    //         }),
                    //       )),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    grpc.start().then((value) async {
      grpc.StreamQueue().listen((value) {
        setState(() => _currentQueue = value.queue);
      });
    });
    loopUpdater = Timer.periodic(const Duration(seconds: 1), (timer) async {
      final buf = await grpc.LoadQueue();
      setState(() {
        queueList = buf.queuelist;
        _currentQueue = buf.queue;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    loopUpdater.cancel();
  }

  bool _queueing = false;
  Widget _yourQueue(BoxConstraints constraint) {
    if (_queue == null) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () async {
          if (_queueing) return;
          _queueing = true;
          final buf = await showDialog(
              context: context,
              builder: (_) {
                String _value = "";
                return AlertDialog(
                  title: const Text("Your Name"),
                  content: Container(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        onChanged: (value) => _value = value,
                        cursorColor: Colors.purple,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple[400])),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[350]))),
                        onSubmitted: (value) async {
                          final buf = await grpc.GetQueue(value);
                          Navigator.pop(context, true);
                          setState(() {
                            _queue = buf;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: MaterialButton(
                            color: Colors.purple,
                            child: const Text(
                              "Confirm",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () async {
                              final buf = await grpc.GetQueue(_value);
                              Navigator.pop(context, true);
                              setState(() {
                                _queue = buf;
                              });
                            }),
                      )
                    ],
                  )),
                );
              });
          if (buf is! bool) {
            final buf = await grpc.GetQueue("");
            setState(() {
              _queue = buf;
            });
          }
          _queueing = false;
        },
        child: Container(
          alignment: Alignment.center,
          width: constraint.maxWidth,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: const AutoSizeText(
            'Take Your Queue',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: AutoSizeText(
        'Your Queue\n\n$_queue',
        maxLines: 3,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  const ResponsiveWidget(
      {Key key,
      @required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
