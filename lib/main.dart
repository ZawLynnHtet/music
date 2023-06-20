// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:audioplayers/audioplayers.dart';
import 'theme/constants.dart';
import 'songlist.dart';
import 'song.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SongList(),
    );
  }
}


class MyMusic extends StatefulWidget {
  const MyMusic({super.key});

  @override
  State<MyMusic> createState() => _MyMusicState();
}

// ignore: camel_case_types
class PlayList {
  final List<Song> _album = [
    Song(
        title: "Favorite Song",
        artist: "Toosii",
        songUrl:
            "https://docs.google.com/uc?export=download&id=15t-Epduwt2lnM0lK10j30GQFcjFch9E9",
        imageUrl:
            "https://i1.sndcdn.com/artworks-9T2YuuPVNS8umwZ2-ExH3eA-t500x500.jpg"),
    Song(
      title: "Hall Of Fame",
      artist: "The Script",
      songUrl:
          "https://docs.google.com/uc?export=download&id=152IykTWREfvsxSof7t3MaVk5qw0OAUQZ",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/en/6/67/Halloffamethescript.jpg",
    ),
    Song(
        title: "See You Again",
        artist: "Wiz_Khalifa_ft._Charlie Puth",
        songUrl:
            "https://docs.google.com/uc?export=download&id=15X6_YFGouhI7XcR49Q_m96VfBHgdMWWL",
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/en/0/08/Wiz_Khalifa_Feat._Charlie_Puth_-_See_You_Again_%28Official_Single_Cover%29.png"),
    Song(
        title: "Love The Way You lie",
        artist: "Eminemz-ft._Rihanna",
        songUrl:
            "https://docs.google.com/uc?export=download&id=15fxlD-KxvgsT7bHRHVQ-lT6SYwHKwVjK",
        imageUrl:
            "https://i1.sndcdn.com/artworks-000046455349-1jsxrb-t500x500.jpg"),
    Song(
        title: "Lighters",
        artist: "Bad_Meets_Evil_&_Bruno_Mars",
        songUrl:
            "https://docs.google.com/uc?export=download&id=15Iuij-yQR0EnNmH6ppSyf5RoePx0jmfv",
        imageUrl:
            "https://images.genius.com/48082eef041e6f75ab2224af5844bdb1.600x600x1.jpg"),
    Song(
        title: "Be With You",
        artist: "Akon",
        songUrl:
            "https://docs.google.com/uc?export=download&id=15C_7UXukoRAZul7pV-w70XsL6aGhmOOV",
        imageUrl:
            "https://www.vistanaij.com.ng/wp-content/uploads/2022/01/akon-%E2%80%93-be-with-you.jpg"),
    Song(
        title: "Ghost",
        artist: "Justin Bieber",
        songUrl:
            "https://docs.google.com/uc?export=download&id=15VhkmL8v_GLvADFrRfzYzr_44ciZKbt5",
        imageUrl:
            "https://i1.sndcdn.com/artworks-qefDi0LXjvwVrAKJ-W9Ixsw-t500x500.jpg"),
    Song(
        title: "Someone You Loved",
        artist: "Lewis Capaldi",
        songUrl:
            "https://docs.google.com/uc?export=download&id=15c_tbilRuQXc4oMEBvzfeJW-Eu0VdWMB",
        imageUrl:
            "https://ar.toneden.io/32216718/974ae716-edb3-4695-94f3-4f81c2c6a8f2"),
    Song(
        title: "Perfect",
        artist: "Ed Sheeran",
        songUrl:
            "https://docs.google.com/uc?export=download&id=15bagUJKJ_2kp2OWT9udOnTY_ZKVU86cc",
        imageUrl:
            "https://i1.sndcdn.com/artworks-R49jxxe1MSnMPyRp-XtMi7g-t500x500.jpg"),
    Song(
        title: "Complicated Heart",
        artist: "Cover by Nonoy Pena",
        songUrl:
            "https://docs.google.com/uc?export=download&id=15Fuu5scsA_xvszDbtd3Wlw3qY2OAEYCk",
        imageUrl:
            "https://i.scdn.co/image/ab6761610000e5eb0b82ae03f4dca3a016047b11"),
    Song(
        title: "Sometimes love just ain't enough",
        artist: "Cover by Myko Manago",
        songUrl:
            "https://docs.google.com/uc?export=download&id=15Q3MNt4t19ryj2jiOR2naq-yfDzxAEeC",
        imageUrl:
            "https://www.idlehearts.com/images/sometimes-love-just-aint-enough-luke-garroway-to-clary.jpg"),
    Song(
        title: "Cupid",
        artist: "FIFTY FIFTY",
        songUrl:
            "https://docs.google.com/uc?export=download&id=1svEmpH_HvnWDojR3fB4eQFJRGT3UPHqC",
        imageUrl:
            "https://i1.sndcdn.com/artworks-znnBayOODzeaJ8Jf-gtf9KA-t500x500.jpg"),
    Song(
        title: "Somewhere Only We Know",
        artist: "Keane",
        songUrl:
            "https://docs.google.com/uc?export=download&id=1QmNWZ0CJuVGRQbh4646w7v7eHHz3U6jj",
        imageUrl:
            "https://c-cl.cdn.smule.com/smule-gg-s-sf-bck3/arr/71/d6/e663e1bb-f18b-4c4e-99ab-3c3ebeaaf18b_1024.jpg"),
  ];

  String getSongUrl(int currentSong){
    return _album[currentSong].songUrl;
  }

  String getImageUrl(int currentSong){
    return _album[currentSong].imageUrl!;
  }

  String getTitle(int currentSong){
    return _album[currentSong].title;
  }

  String getArtist(int currentSong){
    return _album[currentSong].artist!;
  }

  int getLength(){
    return _album.length;
  }

  
}

class _MyMusicState extends State<MyMusic> {

  AudioPlayer player = AudioPlayer();
  bool isPlaying = false;
  bool isLooping = true;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  var songIndex = 0;
  String currentSong = "";

  PlayList playList = PlayList();

  // String formatTime(int seconds) {
  //   return '${(Duration(seconds: seconds))}'.split(".")[0].padLeft(2, "0");
  // }

  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    player.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = true;
        position = Duration.zero;
        songIndex += 1;
        if (songIndex > playList.getLength() - 1) {
          songIndex = 0;
        }
        player.play(UrlSource(playList.getSongUrl(currentSong as int)));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.deepPurple.shade800.withOpacity(.8),
        Colors.deepPurple.shade400.withOpacity(.8),])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.grid_view_rounded,
                          size: 30,
                          color: iconColor,
                        ),
                      ),
                      Text(
                        "Collection",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: textWhite),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          size: 30,
                          color: iconColor,
                        ),
                      ),
                    ],
                  ),
                ),
                GlassContainer(
                  height: 320,
                  width: 320,
                  gradient: LinearGradient(colors: [
                    Colors.blue.withOpacity(0.60),
                    Colors.blueGrey.withOpacity(0.30)
                  ]),
                  borderGradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 202, 185, 210).withOpacity(.50),
                    const Color.fromARGB(255, 9, 227, 115).withOpacity(.40)
                  ]),
                  borderColor: const Color.fromARGB(255, 167, 217, 169),
                  elevation: 30,
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: Colors.black,
                  // blur: 50,
                  padding: const EdgeInsets.all(15),
                  child: Image.network(
                    playList.getImageUrl(songIndex),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 10, left: 10, right: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        playList.getTitle(songIndex),
                        style: TextStyle(
                          color: textWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        playList.getArtist(songIndex),
                        style: TextStyle(
                          color: textWhite,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 2,
                          thumbShape: const RoundSliderThumbShape(
                            disabledThumbRadius: 5,
                            enabledThumbRadius: 5,
                          )
                        ),
                        child: Slider(
                            activeColor: Colors.white,
                            inactiveColor: Colors.white60,
                            min: 0,
                            max: duration.inSeconds.toDouble(),
                            value: position.inSeconds.toDouble(),
                            onChanged: (value) async {
                              final position = Duration(seconds: value.toInt());
                              await player.seek(position);
                              // value = value;
                              player.resume;
                              setState(() {});
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              position.toString().split(".")[0],
                              style: TextStyle(
                                color: textWhite,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              duration.toString().split(".")[0],
                              style: TextStyle(
                                color: textWhite,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            isLooping = !isLooping;
                            setState(() {});
                          },
                          icon: isLooping == true
                              ? Icon(
                                  Icons.loop,
                                  color: textWhite,
                                  size: 26,
                                )
                              : Icon(
                                  Icons.shuffle_rounded,
                                  color: textWhite,
                                  size: 26,
                                )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isPlaying = true;
                              songIndex -= 1;
                              if (songIndex < 0) {
                                songIndex = playList.getLength() - 1;
                              }
                              player.play(UrlSource(playList.getSongUrl(songIndex)));
                            });
                          },
                          icon: Icon(
                            Icons.skip_previous,
                            size: 26,
                            color: iconColor,
                          )),
                      IconButton(
                          onPressed: () async {
                            isPlaying = !isPlaying;
                            if (isPlaying == true) {
                              await player
                                  .play(UrlSource(playList.getSongUrl( songIndex)));
                            } else {
                              await player.pause();
                            }
                            setState(() {});
                          },
                          icon: isPlaying == false
                              ? Icon(
                                  Icons.play_circle_fill,
                                  size: 50,
                                  color: iconColor,
                                )
                              : Icon(
                                  Icons.pause_circle_filled,
                                  size: 50,
                                  color: iconColor,
                                )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isPlaying = true;
                              songIndex += 1;
                              if (songIndex > playList.getLength() - 1) {
                                songIndex = 0;
                              }
                              player.play(UrlSource(playList.getSongUrl(songIndex)));
                            });
                          },
                          icon: Icon(
                            Icons.skip_next,
                            size: 26,
                            color: iconColor,
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.library_music,
                          color: textWhite,
                          size: 26,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

