import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // late VideoPlayerController _controller2;
  // bool startedPlaying2 = false;
  //
  // @override
  // void initState() {
  //   super.initState();
  //
  //   _controller2 = VideoPlayerController.network(
  //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  //     // closedCaptionFile: _loadCaptions(),
  //     // videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  //   );
  //   _controller2.addListener(() {
  //     if (_controller2.value.isPlaying) return;
  //     if (_controller2.value.position >= _controller2.value.duration) {
  //       // loop
  //       _controller2.seekTo(const Duration(seconds: 0));
  //       _controller2.play();
  //     }
  //   });
  //
  //
  //   _controller2.setLooping(true);
  //   // _controller2.initialize();
  //   // _controller2.play();
  // }
  //
  // @override
  // void dispose() {
  //   _controller2.dispose();
  //
  //   super.dispose();
  // }
  //
  //
  // Future<bool> started2() async {
  //   await _controller2.initialize();
  //   await _controller2.play();
  //   startedPlaying2 = true;
  //   return true;
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            buildLocalMP4(),
            buildUrlMP4(),
            Container(
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset(
                      "assets/butterfly.gif",
                      height: 225.0,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Container(
                    height: 225.0,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "local file Gif",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("Image.asset",
                            style: TextStyle(fontSize: 20)),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.green,
                            ),
                          ),
                          onPressed: () {},
                          child:
                              Text("Buy Now", style: TextStyle(fontSize: 24)),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(100),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                        height: 225.0,
                        width: MediaQuery.of(context).size.width,
                        child: Lottie.asset('assets/lf20_w2Afea.json')),
                  ),

                  Container(
                    height: 225.0,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "local json file",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("Lottie",
                            style: TextStyle(fontSize: 20)),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.green,
                            ),
                          ),
                          onPressed: () {},
                          child:
                              Text("Buy Now", style: TextStyle(fontSize: 24)),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(100),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      height: 225.0,
                      width: MediaQuery.of(context).size.width,
                      child:
                          // Load a Lottie file from a remote url
                          Lottie.network(
                              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
                    ),
                  ),

                  Container(
                    height: 225.0,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "url json file",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("Lottie",
                            style: TextStyle(fontSize: 20)),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.green,
                            ),
                          ),
                          onPressed: () {},
                          child:
                              Text("Buy Now", style: TextStyle(fontSize: 24)),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(100),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      height: 225.0,
                      width: MediaQuery.of(context).size.width,
                      child:
                          // Load an animation and its images from a zip file
                          Lottie.asset('assets/angel.zip'),
                    ),
                  ),

                  Container(
                    height: 225.0,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "local zip",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("Lottie",
                            style: TextStyle(fontSize: 20)),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.green,
                            ),
                          ),
                          onPressed: () {},
                          child:
                              Text("Buy Now", style: TextStyle(fontSize: 24)),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(100),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class buildLocalMP4 extends StatefulWidget {
  const buildLocalMP4({Key? key}) : super(key: key);

  @override
  State<buildLocalMP4> createState() => _buildLocalMP4State();
}

class _buildLocalMP4State extends State<buildLocalMP4> {
  late VideoPlayerController _controller1;
  bool startedPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller1 = VideoPlayerController.asset('assets/Butterfly-209.mp4',
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));

    _controller1.addListener(() {
      if (_controller1.value.isPlaying) return;
      if (_controller1.value.position >= _controller1.value.duration) {
        // loop
        _controller1.seekTo(const Duration(seconds: 0));
        _controller1.play();
      }
    });
  }

  @override
  void dispose() {
    _controller1.dispose();

    super.dispose();
  }

  Future<bool> started() async {
    await _controller1.initialize();
    await _controller1.play();
    startedPlaying = true;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: FutureBuilder<bool>(
        future: started(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.data ?? false) {
            return AspectRatio(
              aspectRatio: _controller1.value.aspectRatio,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                      width: _controller1.value.size?.width ?? 0,
                      height: _controller1.value.size?.height ?? 0,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: VideoPlayer(_controller1))),

                  Container(
                    width: _controller1.value.size?.width ?? 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Local File MP4",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("video_player", style: TextStyle(fontSize: 20)),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.green,
                            ),
                          ),
                          onPressed: () {},
                          child:
                              Text("Buy Now", style: TextStyle(fontSize: 24)),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(100),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Text('waiting for video to load');
          }
        },
      ),
    );
  }
}

class buildUrlMP4 extends StatefulWidget {
  const buildUrlMP4({Key? key}) : super(key: key);

  @override
  State<buildUrlMP4> createState() => _buildUrlMP4State();
}

class _buildUrlMP4State extends State<buildUrlMP4> {
  late VideoPlayerController _controller2;
  bool startedPlaying2 = false;

  @override
  void initState() {
    super.initState();

    _controller2 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    _controller2.setLooping(true);
    _controller2.play();

  }

  @override
  void dispose() {
    _controller2.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: AspectRatio(
        aspectRatio: _controller2.value.aspectRatio,
        child: Stack(
          children: <Widget>[
            SizedBox(
                width: _controller2.value.size?.width ?? 0,
                height: _controller2.value.size?.height ?? 0,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: VideoPlayer(_controller2))),

            Container(
              width: _controller2.value.size?.width ?? 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "URL Path MP4",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("video_player", style: TextStyle(fontSize: 20)),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.green,
                      ),
                    ),
                    child: Text("Buy Now", style: TextStyle(fontSize: 24)),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(100),
              ),
            )

            // LoginWidget()
            // VideoPlayer(_controller),
            // _ControlsOverlay(controller: _controller),
            // VideoProgressIndicator(_controller, allowScrubbing: true),
          ],
        ),
      ),
    );
  }
}
