
class Song {
  late String songUrl;
  late String title;

  String? artist;
  String? imageUrl;
  
  Song({required this.songUrl, required this.title, this.artist, this.imageUrl});
}