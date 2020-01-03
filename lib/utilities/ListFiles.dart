

class YoutubeData {
  final String title;
  final String thumbNail;
  final String avatar;
  final String username;
  final String views;
  final String duration;
  final String ageOfVideo;

  YoutubeData(
      {this.title,
      this.thumbNail,
      this.avatar,
      this.username,
      this.views,
      this.duration,
      this.ageOfVideo});
}

List<YoutubeData> homePageData = [
  YoutubeData(
    title: 'Skip Bayless wouldn\'t be surprised to see Tom Brady walk away from the Patriots | NFL | UNDISPUTED',
    thumbNail: 'https://i.ytimg.com/vi/vmQwVR4-aaA/hqdefault.jpg',
    avatar: 'https://yt3.ggpht.com/a-/AAuE7mDJQ6_uPAa6V_8wxoYIsB03GYe0UwdD8u81qA=s68-c-k-c0x00ffffff-no-rj-mo',
    username: 'Skip and Shannon: UNDISPUTRD',
    views: '4.4k views',
    duration: '9:02',
    ageOfVideo: '44 minutes ago',
  ),
  YoutubeData(
    title: '\$2 Ramen VS \$100 Ramen in Tokyo, Japan!!! Never Seen Before!!',
    thumbNail: 'https://i.ytimg.com/vi/a5yP1yqGEMo/hqdefault.jpg',
    avatar: 'https://yt3.ggpht.com/a/AGF-l7892aySgGAoMdMasvTMDEDLPMl-gqKI4rIFHQ=s88-c-k-c0xffffffff-no-rj-mo',
    username: 'Best Ever Food Review Show',
    views: '2.4M views',
    duration: '16:59',
    ageOfVideo: '1 month ago',
  ),
  YoutubeData(
    title: 'Stephen Curry\'s Best Plays Of The Decade',
    thumbNail: 'https://i.ytimg.com/vi/P5_xgip67ac/hqdefault.jpg',
    avatar: 'https://yt3.ggpht.com/a/AGF-l78U5c2H6ecI8vrMu9seGbF3K3fHJ7rtaU8n=s88-c-k-c0xffffffff-no-rj-mo',
    username: 'NBA',
    views: '87k views',
    duration: '12:54',
    ageOfVideo: '4 hours ago',
  )
];
