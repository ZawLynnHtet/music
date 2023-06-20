import 'package:audioplayers/audioplayers.dart';
import 'package:classify/main.dart';
import 'package:flutter/material.dart';
import 'theme/constants.dart';
import 'song.dart';

class SongList extends StatefulWidget {
  const SongList({super.key});

  @override
  State<SongList> createState() => _SongListState();
}

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

class _SongListState extends State<SongList> {
  
  PlayList playList = PlayList();
  TextEditingController songCtrl = TextEditingController();
  bool isPlaying = false;
  AudioPlayer player = AudioPlayer();
  int songIndex = 0;

  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });

    player.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = true;
        songIndex += 1;
        if (songIndex > playList.getLength() - 1) {
          songIndex = 0;
        }
        player.play(UrlSource(playList.getSongUrl(songIndex)));
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
              colors: [
            Colors.deepPurple.shade800.withOpacity(.8),
            Colors.deepPurple.shade200.withOpacity(.8),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.grid_view_rounded,
              color: iconColor,
              size: 28,
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://photo-cdn2.icons8.com/um-GKe2DNvJqba08eKQ29EpG9KToUodefFAk4OamXrE/rs:fit:576:864/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvOTM5L2M1NmRk/MmIyLTQxYzQtNDky/ZS1hOGY2LTZiMjZl/NTMyNDUzMy5qcGc.webp"),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: textWhite,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Enjoy your favorite music",
                  style: TextStyle(
                    color: textWhite,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (value) {},
                  controller: songCtrl,
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: bgWhite,
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        fontSize: 15,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 23,
                      ),
                      suffixIcon: const Icon(
                        Icons.mic,
                        size: 23,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Music',
                      style: TextStyle(
                        color: textWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'View More',
                      style: TextStyle(
                        color: textWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .27,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: playList.getLength(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return const MyMusic();
                            }));
                          },
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * .43,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              playList.getImageUrl(index)),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .37,
                                height: 50,
                                margin: const EdgeInsets.only(bottom: 18),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white.withOpacity(0.8),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Play"),
                                    Icon(
                                      Icons.play_circle_fill,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Playlists',
                          style: TextStyle(
                            color: textWhite,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'View More',
                          style: TextStyle(
                            color: textWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                        // scrollDirection: Axis.vertical,
                        itemCount: playList.getLength(),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(top: 20),
                        itemBuilder: (context, index) {
                          return InkWell(
                            splashColor: Colors.transparent,
                            onTap: () async {
                              isPlaying = !isPlaying;
                              if (isPlaying == true) {
                                await player
                                    .play(UrlSource(playList.getSongUrl(index)));
                              } else {
                                await player.pause();
                              }
                              setState(() {});
                            },
                            child: Container(
                              height: 75,
                              margin: const EdgeInsets.only(bottom: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color:
                                    Colors.deepPurple.shade800.withOpacity(.6),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.network(
                                      playList.getImageUrl(index),
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          playList.getTitle(index),
                                          style: TextStyle(
                                            color: textWhite,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          playList.getArtist(index),
                                          style: TextStyle(
                                            color: textWhite,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () async {
                                        isPlaying = !isPlaying;
                                        if (isPlaying == true) {
                                          await player.play(
                                              UrlSource(playList.getSongUrl(index)));
                                        } else {
                                          await player.pause();
                                        }
                                        setState(() {});
                                      },
                                      icon: isPlaying == false
                                          ? Icon(
                                              Icons.play_circle_fill,
                                              color: iconColor,
                                              size: 25,
                                            )
                                          : Icon(
                                              Icons.pause_circle_filled,
                                              color: iconColor,
                                              size: 25,
                                            ))
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
