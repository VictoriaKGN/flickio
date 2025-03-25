// Dart
import 'dart:convert';

// Model
import '../../models/movie.dart';

const String trendingMoviesJson = '''
[
  {
    "backdrop_path": "/2siOHQYDG7gCQB6g69g2pTZiSia.jpg",
    "id": 447273,
    "title": "Snow White",
    "original_title": "Snow White",
    "overview": "Princess Snow White flees the castle when the Evil Queen, in her jealousy over Snow White's inner beauty, tries to kill her. Deep into the dark woods, she stumbles upon seven magical dwarves and a young thief named Jonathan. Together, they strive to survive the Queen's relentless pursuit and aspire to take back the kingdom in the process...",
    "poster_path": "/xWWg47tTfparvjK0WJNX4xL8lW2.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      10751,
      14
    ],
    "popularity": 212.63688482142857,
    "release_date": "2025-03-19",
    "video": false,
    "vote_average": 4.6,
    "vote_count": 278
  },
  {
    "backdrop_path": "/6dC7ULfiutxwEAs7LjWHL2Tc7Zv.jpg",
    "id": 1124620,
    "title": "The Monkey",
    "original_title": "The Monkey",
    "overview": "When twin brothers find a mysterious wind-up monkey, a series of outrageous deaths tear their family apart. Twenty-five years later, the monkey begins a new killing spree forcing the estranged brothers to confront the cursed toy.",
    "poster_path": "/yYa8Onk9ow7ukcnfp2QWVvjWYel.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      27,
      35
    ],
    "popularity": 38.07519821428571,
    "release_date": "2025-02-14",
    "video": false,
    "vote_average": 5.9,
    "vote_count": 234
  },
  {
    "backdrop_path": "/sNx1A3822kEbqeUxvo5A08o4N7o.jpg",
    "id": 1195506,
    "title": "Novocaine",
    "original_title": "Novocaine",
    "overview": "When the girl of his dreams is kidnapped, everyman Nate turns his inability to feel pain into an unexpected strength in his fight to get her back.",
    "poster_path": "/xmMHGz9dVRaMY6rRAlEX4W0Wdhm.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      28,
      35,
      53
    ],
    "popularity": 43.79321696428571,
    "release_date": "2025-03-12",
    "video": false,
    "vote_average": 7.2,
    "vote_count": 69
  },
  {
    "backdrop_path": "/qUc0Hol3eP74dbW4YyqT6oRLYgT.jpg",
    "id": 696506,
    "title": "Mickey 17",
    "original_title": "Mickey 17",
    "overview": "Unlikely hero Mickey Barnes finds himself in the extraordinary circumstance of working for an employer who demands the ultimate commitment to the job… to die, for a living.",
    "poster_path": "/edKpE9B5qN3e559OuMCLZdW1iBZ.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      878,
      35,
      12
    ],
    "popularity": 53.83770089285714,
    "release_date": "2025-02-28",
    "video": false,
    "vote_average": 7,
    "vote_count": 940
  },
  {
    "backdrop_path": "/fTrQsdMS2MUw00RnzH0r3JWHhts.jpg",
    "id": 1197306,
    "title": "A Working Man",
    "original_title": "A Working Man",
    "overview": "Levon Cade left behind a decorated military career in the black ops to live a simple life working construction. But when his boss's daughter, who is like family to him, is taken by human traffickers, his search to bring her home uncovers a world of corruption far greater than he ever could have imagined.",
    "poster_path": "/6FRFIogh3zFnVWn7Z6zcYnIbRcX.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      28,
      12,
      80,
      53
    ],
    "popularity": 32.007234821428575,
    "release_date": "2025-03-26",
    "video": false,
    "vote_average": 8.3,
    "vote_count": 3
  },
  {
    "backdrop_path": "/2n7lYEeIbucsEQCswRcVB6ZYmMP.jpg",
    "id": 777443,
    "title": "The Electric State",
    "original_title": "The Electric State",
    "overview": "An orphaned teen hits the road with a mysterious robot to find her long-lost brother, teaming up with a smuggler and his wisecracking sidekick.",
    "poster_path": "/1TZ9Er1xEAKizzKKqYVgJIhNkN2.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      878,
      12,
      28
    ],
    "popularity": 139.17585892857144,
    "release_date": "2025-03-07",
    "video": false,
    "vote_average": 6.6,
    "vote_count": 748
  },
  {
    "backdrop_path": "/ujtLvjVCBpgouQTyEG4qNVTxlXi.jpg",
    "id": 1210938,
    "title": "Revelations",
    "original_title": "계시록",
    "overview": "A pastor who believes in divine revelation and a detective haunted by visions pursue a missing person case — exposing their own demons in the process.",
    "poster_path": "/ak0HlRVsVzh8mvwIUZpZr0z6uqW.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "ko",
    "genre_ids": [
      53,
      80,
      9648
    ],
    "popularity": 93.36690267857144,
    "release_date": "2025-03-20",
    "video": false,
    "vote_average": 6.3,
    "vote_count": 48
  },
  {
    "backdrop_path": "/wLxQPbIM0Bcz832ekTVVlDq1AHV.jpg",
    "id": 1084199,
    "title": "Companion",
    "original_title": "Companion",
    "overview": "During a weekend getaway at a secluded lakeside estate, a group of friends finds themselves entangled in a web of secrets, deception, and advanced technology. As tensions rise and loyalties are tested, they uncover unsettling truths about themselves and the world around them.",
    "poster_path": "/oCoTgC3UyWGfyQ9thE10ulWR7bn.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      35,
      27,
      878,
      53
    ],
    "popularity": 52.876930357142854,
    "release_date": "2025-01-22",
    "video": false,
    "vote_average": 7.1,
    "vote_count": 852
  },
  {
    "backdrop_path": "/gsQJOfeW45KLiQeEIsom94QPQwb.jpg",
    "id": 1125899,
    "title": "Cleaner",
    "original_title": "Cleaner",
    "overview": "When a group of radical activists take over an energy company's annual gala, seizing 300 hostages, an ex-soldier turned window cleaner suspended 50 storeys up on the outside of the building must save those trapped inside, including her younger brother.",
    "poster_path": "/mwzDApMZAGeYCEVjhegKvCzDX0W.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      28,
      53
    ],
    "popularity": 400.92131517857143,
    "release_date": "2025-02-19",
    "video": false,
    "vote_average": 6.3,
    "vote_count": 62
  },
  {
    "backdrop_path": "/bse2E5xgKcsL6w8h2efqpecvnxV.jpg",
    "id": 574475,
    "title": "Final Destination Bloodlines",
    "original_title": "Final Destination Bloodlines",
    "overview": "Plagued by a violent recurring nightmare, college student Stefanie heads home to track down the one person who might be able to break the cycle and save her family from the grisly demise that inevitably awaits them all.",
    "poster_path": "/15oUaXHGHTBm9KLmeOwGTIFrc64.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      27,
      9648
    ],
    "popularity": 7.332938392857143,
    "release_date": "2025-05-14",
    "video": false,
    "vote_average": 0,
    "vote_count": 0
  },
  {
    "backdrop_path": "/dGULFnPJKPh0sdu3F64YmQ0qcym.jpg",
    "id": 972533,
    "title": "Last Breath",
    "original_title": "Last Breath",
    "overview": "Last Breath follows a seasoned deep-sea diver as he battles the raging elements to rescue his crewmate trapped hundreds of feet below the ocean's surface.",
    "poster_path": "/w04Xg5Bnqj7ECdCxTsHgqK6AtJW.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      53,
      18
    ],
    "popularity": 49.209574999999994,
    "release_date": "2025-02-27",
    "video": false,
    "vote_average": 6.1,
    "vote_count": 79
  },
  {
    "backdrop_path": "/8eifdha9GQeZAkexgtD45546XKx.jpg",
    "id": 822119,
    "title": "Captain America: Brave New World",
    "original_title": "Captain America: Brave New World",
    "overview": "After meeting with newly elected U.S. President Thaddeus Ross, Sam finds himself in the middle of an international incident. He must discover the reason behind a nefarious global plot before the true mastermind has the entire world seeing red.",
    "poster_path": "/pzIddUEMWhWzfvLI3TwxUG2wGoi.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      28,
      53,
      878
    ],
    "popularity": 297.06138571428573,
    "release_date": "2025-02-12",
    "video": false,
    "vote_average": 6.1,
    "vote_count": 1103
  },
  {
    "backdrop_path": "/kEYWal656zP5Q2Tohm91aw6orlT.jpg",
    "id": 1064213,
    "title": "Anora",
    "original_title": "Anora",
    "overview": "A young sex worker from Brooklyn gets her chance at a Cinderella story when she meets and impulsively marries the son of an oligarch. Once the news reaches Russia, her fairytale is threatened as his parents set out to get the marriage annulled.",
    "poster_path": "/7MrgIUeq0DD2iF7GR6wqJfYZNeC.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      18,
      35,
      10749
    ],
    "popularity": 37.97615714285714,
    "release_date": "2024-10-14",
    "video": false,
    "vote_average": 7,
    "vote_count": 1862
  },
  {
    "backdrop_path": "/2jllAxMf7dTMt1fw9A1slsaj6Fv.jpg",
    "id": 1362608,
    "title": "Little Siberia",
    "original_title": "Pikku Siperia",
    "overview": "A pastor's faith turns upside down when a meteorite lands in his small Finnish town, its impact stirring up chaos and criminal intentions.",
    "poster_path": "/lhg3YuybroN2gszAEanXLMtj473.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "fi",
    "genre_ids": [
      35,
      53
    ],
    "popularity": 69.68075714285715,
    "release_date": "2025-03-20",
    "video": false,
    "vote_average": 7.3,
    "vote_count": 23
  },
  {
    "backdrop_path": "/1w8kutrRucTd3wlYyu5QlUDMiG1.jpg",
    "id": 762509,
    "title": "Mufasa: The Lion King",
    "original_title": "Mufasa: The Lion King",
    "overview": "Mufasa, a cub lost and alone, meets a sympathetic lion named Taka, the heir to a royal bloodline. The chance meeting sets in motion an expansive journey of a group of misfits searching for their destiny.",
    "poster_path": "/lurEK87kukWNaHd0zYnsi3yzJrs.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      12,
      10751,
      16
    ],
    "popularity": 90.63573214285715,
    "release_date": "2024-12-18",
    "video": false,
    "vote_average": 7.5,
    "vote_count": 1699
  },
  {
    "backdrop_path": "/qSh3Aav8Kcoe2D2Azr8Bh1J0HAa.jpg",
    "id": 1145725,
    "title": "Tyler Perry's Duplicity",
    "original_title": "Tyler Perry's Duplicity",
    "overview": "High-powered attorney Marley faces her most personal case yet when she is tasked with uncovering the truth behind the murder of her best friend Fela’s husband. With the help of her boyfriend – a former cop turned private investigator – Marley’s search for what really happened leads her down a treacherous maze of deception and betrayal.",
    "poster_path": "/xNINmmVZuRn2MWo34Mj42OjBntN.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      53,
      18
    ],
    "popularity": 61.73856607142857,
    "release_date": "2025-03-19",
    "video": false,
    "vote_average": 6.896,
    "vote_count": 53
  },
  {
    "backdrop_path": "/zo8CIjJ2nfNOevqNajwMRO6Hwka.jpg",
    "id": 1241982,
    "title": "Moana 2",
    "original_title": "Moana 2",
    "overview": "After receiving an unexpected call from her wayfinding ancestors, Moana journeys alongside Maui and a new crew to the far seas of Oceania and into dangerous, long-lost waters for an adventure unlike anything she's ever faced.",
    "poster_path": "/aLVkiINlIeCkcZIzb7XHzPYgO6L.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      16,
      12,
      10751,
      35
    ],
    "popularity": 144.0009875,
    "release_date": "2024-11-21",
    "video": false,
    "vote_average": 7.1,
    "vote_count": 2048
  },
  {
    "backdrop_path": "/t98L9uphqBSNn2Mkvdm3xSFCQyi.jpg",
    "id": 933260,
    "title": "The Substance",
    "original_title": "The Substance",
    "overview": "A fading celebrity decides to use a black market drug, a cell-replicating substance that temporarily creates a younger, better version of herself.",
    "poster_path": "/cGm2qnmXx9tFabmzEIkJZjCJdQd.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      27,
      878,
      18,
      35
    ],
    "popularity": 39.91538392857143,
    "release_date": "2024-09-07",
    "video": false,
    "vote_average": 7.1,
    "vote_count": 4261
  },
  {
    "backdrop_path": "/7z2lSLmiJ5jNeYCoXmton86BapN.jpg",
    "id": 1075456,
    "title": "O'Dessa",
    "original_title": "O'Dessa",
    "overview": "A farm girl is on an epic quest to recover a cherished family heirloom. Her journey leads her to a strange and dangerous city where she meets her one true love – but in order to save his soul, she must put the power of destiny and song to the ultimate test.",
    "poster_path": "/xbdRxyr1u5dbhvMm14w7J1jJWQS.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      10402,
      18,
      878
    ],
    "popularity": 38.96302513392857,
    "release_date": "2025-03-08",
    "video": false,
    "vote_average": 6.2,
    "vote_count": 41
  },
  {
    "backdrop_path": "/hmZnqijPaaACjenDkrbWcCmcADI.jpg",
    "id": 549509,
    "title": "The Brutalist",
    "original_title": "The Brutalist",
    "overview": "Escaping post-war Europe, visionary architect László Toth arrives in America to rebuild his life. On his own in a strange new country, a wealthy industrialist recognizes his talent. But power and legacy come at a heavy cost...",
    "poster_path": "/vP7Yd6couiAaw9jgMd5cjMRj3hQ.jpg",
    "media_type": "movie",
    "adult": false,
    "original_language": "en",
    "genre_ids": [
      18
    ],
    "popularity": 21.22679732142857,
    "release_date": "2024-12-20",
    "video": false,
    "vote_average": 7.1,
    "vote_count": 878
  }
]
''';

List<Movie> getTrendingMovies() {
  final List<dynamic> jsonList = jsonDecode(trendingMoviesJson);
  return jsonList.map((json) => Movie.fromJson(json)).toList();
}
