import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video extends StatelessWidget {
  const Video({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      color: Colors.amberAccent.shade400,

      title: 'IMITA LOS SONIDOS DE LOS ANIMALES',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  static String myVideoId = 'l7k0kWfn1H0';


  // Initiate the Youtube player controller
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent.shade100,
        appBar: AppBar(
          title: const Text('IMITA LOS SONIDOS DE LOS ANIMALES'),
          backgroundColor: Colors.amberAccent.shade400,
        ),
        body: YoutubePlayer(
          controller: _controller,
          liveUIColor: Colors.amber,
        ));
  }
}