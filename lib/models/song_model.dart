class Song {
  final String title;
  final String description;
  final String url;
  final String coverurl;

  Song({
    required this.title, 
    required this.description, 
    required this.url, 
    required this.coverurl
    });

static List<Song> songs = [
   Song(
    title: 'Master of Suspence',
    description:'Earl Klugh',
    url:'assets/music/Master of Suspence.mp3',
    coverurl:'assets/images/Master of Suspence.jpg'
   ),
   Song(
    title: 'No one Knows',
    description:'Asa',
    url:'assets/music/No One Knows.mp3',
    coverurl:'assets/images/No one Knows.jpg'
   ),
   Song(
    title: 'Palomar',
    description:'Lucio Maia',
    url:'assets/music/Palomar.mp3',
    coverurl:'assets/images/Palomar.jpg'
   ),
];
}