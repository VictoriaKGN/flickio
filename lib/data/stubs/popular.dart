// Dart
import 'dart:convert';

// Model
import '../../models/movie.dart';

const String popularMoviesJson = '''
[
  {
    "adult": false,
    "backdrop_path": "/gsQJOfeW45KLiQeEIsom94QPQwb.jpg",
    "genre_ids": [
      28,
      53
    ],
    "id": 1125899,
    "original_language": "en",
    "original_title": "Cleaner",
    "overview": "When a group of radical activists take over an energy company's annual gala, seizing 300 hostages, an ex-soldier turned window cleaner suspended 50 storeys up on the outside of the building must save those trapped inside, including her younger brother.",
    "popularity": 400.92131517857143,
    "poster_path": "/mwzDApMZAGeYCEVjhegKvCzDX0W.jpg",
    "release_date": "2025-02-19",
    "title": "Cleaner",
    "video": false,
    "vote_average": 6.2,
    "vote_count": 58
  },
  {
    "adult": false,
    "backdrop_path": null,
    "genre_ids": [
      53,
      878
    ],
    "id": 1165067,
    "original_language": "en",
    "original_title": "Cosmic Chaos",
    "overview": "Battles in virtual reality, survival in a post-apocalyptic wasteland, a Soviet spaceship giving a distress signal - Fantastic stories created with advanced special effects and passion.",
    "popularity": 391.20494017857146,
    "poster_path": "/mClzWv7gBqgXfjZXp49Enyoex1v.jpg",
    "release_date": "2023-08-03",
    "title": "Cosmic Chaos",
    "video": false,
    "vote_average": 3.3,
    "vote_count": 3
  },
  {
    "adult": false,
    "backdrop_path": "/8eifdha9GQeZAkexgtD45546XKx.jpg",
    "genre_ids": [
      28,
      53,
      878
    ],
    "id": 822119,
    "original_language": "en",
    "original_title": "Captain America: Brave New World",
    "overview": "After meeting with newly elected U.S. President Thaddeus Ross, Sam finds himself in the middle of an international incident. He must discover the reason behind a nefarious global plot before the true mastermind has the entire world seeing red.",
    "popularity": 297.06138571428573,
    "poster_path": "/pzIddUEMWhWzfvLI3TwxUG2wGoi.jpg",
    "release_date": "2025-02-12",
    "title": "Captain America: Brave New World",
    "video": false,
    "vote_average": 6.129,
    "vote_count": 1102
  },
  {
    "adult": false,
    "backdrop_path": null,
    "genre_ids": [
      28,
      10752
    ],
    "id": 1373723,
    "original_language": "en",
    "original_title": "The Codes of War",
    "overview": "War stories about family, ethics and honor include the true story of two U.S. Marines who in a span of six seconds, must stand their ground to stop a suicide truck bomb, a Navy Corpsman who attempts to hold on to his humanity, and a WW2 soldier who gets separated from his squad and is forced to re-evaluate his code.",
    "popularity": 286.03203839285715,
    "poster_path": "/oXeiQAfRK90pxxhP5iKPXQqAIN1.jpg",
    "release_date": "2025-03-20",
    "title": "The Codes of War",
    "video": false,
    "vote_average": 0,
    "vote_count": 0
  },
  {
    "adult": false,
    "backdrop_path": "/2siOHQYDG7gCQB6g69g2pTZiSia.jpg",
    "genre_ids": [
      10751,
      14
    ],
    "id": 447273,
    "original_language": "en",
    "original_title": "Snow White",
    "overview": "Princess Snow White flees the castle when the Evil Queen, in her jealousy over Snow White's inner beauty, tries to kill her. Deep into the dark woods, she stumbles upon seven magical dwarves and a young thief named Jonathan. Together, they strive to survive the Queen's relentless pursuit and aspire to take back the kingdom in the process...",
    "popularity": 212.63688482142857,
    "poster_path": "/xWWg47tTfparvjK0WJNX4xL8lW2.jpg",
    "release_date": "2025-03-19",
    "title": "Snow White",
    "video": false,
    "vote_average": 4.6,
    "vote_count": 275
  },
  {
    "adult": false,
    "backdrop_path": "/19pr5CzgsBYs67FAJvke8GQxN4g.jpg",
    "genre_ids": [
      27
    ],
    "id": 1301650,
    "original_language": "mn",
    "original_title": "Z Zone",
    "overview": "In a remote corner of the world, a group of troubled youths finds themselves whisked away to a mysterious military base after a series of misbehaviors. Expecting little more than a stern reprimand, they are instead thrust into a world of secrets and shadows.  In a desperate bid for freedom, they must unravel the mysteries of the base and confront the sinister forces that lurk in the shadows. But with time running out and danger lurking around every corner, the odds of survival grow slimmer by the minute.  Courage, strength, and sacrifice, would they finally escape the clutches of the base and emerge from the darkness into the light?",
    "popularity": 209.76754285714287,
    "poster_path": "/s6kFtdxfTC4xR8yDGbIjTgGEcFI.jpg",
    "release_date": "2025-02-07",
    "title": "Z Zone",
    "video": false,
    "vote_average": 7.6,
    "vote_count": 9
  },
  {
    "adult": false,
    "backdrop_path": "/e807jDKiFcntZS32ze88X6I96OD.jpg",
    "genre_ids": [
      16,
      28
    ],
    "id": 1297763,
    "original_language": "ja",
    "original_title": "ニンジャバットマン対ヤクザリーグ",
    "overview": "The Batman family has returned to the present to discover that Japan has disappeared, and a giant island - Hinomoto - is now in the sky over Gotham City.  At the top sit the Yakuza, a group of superpowered individuals who reign without honor or humanity and look suspiciously like the Justice League. Now, it’s up to Batman and his allies to save Gotham!",
    "popularity": 183.90154375,
    "poster_path": "/sVVT6GYFErVv0Lcc9NvqCu0iOxO.jpg",
    "release_date": "2025-03-17",
    "title": "Batman Ninja vs. Yakuza League",
    "video": false,
    "vote_average": 6.6,
    "vote_count": 60
  },
  {
    "adult": false,
    "backdrop_path": "/zo8CIjJ2nfNOevqNajwMRO6Hwka.jpg",
    "genre_ids": [
      16,
      12,
      10751,
      35
    ],
    "id": 1241982,
    "original_language": "en",
    "original_title": "Moana 2",
    "overview": "After receiving an unexpected call from her wayfinding ancestors, Moana journeys alongside Maui and a new crew to the far seas of Oceania and into dangerous, long-lost waters for an adventure unlike anything she's ever faced.",
    "popularity": 144.0009875,
    "poster_path": "/aLVkiINlIeCkcZIzb7XHzPYgO6L.jpg",
    "release_date": "2024-11-21",
    "title": "Moana 2",
    "video": false,
    "vote_average": 7.1,
    "vote_count": 2048
  },
  {
    "adult": false,
    "backdrop_path": "/2n7lYEeIbucsEQCswRcVB6ZYmMP.jpg",
    "genre_ids": [
      878,
      12,
      28
    ],
    "id": 777443,
    "original_language": "en",
    "original_title": "The Electric State",
    "overview": "An orphaned teen hits the road with a mysterious robot to find her long-lost brother, teaming up with a smuggler and his wisecracking sidekick.",
    "popularity": 139.17585892857144,
    "poster_path": "/1TZ9Er1xEAKizzKKqYVgJIhNkN2.jpg",
    "release_date": "2025-03-07",
    "title": "The Electric State",
    "video": false,
    "vote_average": 6.6,
    "vote_count": 745
  },
  {
    "adult": false,
    "backdrop_path": "/deUWVEgNh2IGjShyymZhaYP40ye.jpg",
    "genre_ids": [
      28,
      12,
      53
    ],
    "id": 1356039,
    "original_language": "es",
    "original_title": "Contraataque",
    "overview": "When a hostage rescue mission creates a new enemy, Capt. Guerrero and his elite soldiers must face an ambush by a criminal group.",
    "popularity": 132.6946919642857,
    "poster_path": "/lI2uFlSEkwXKljqiry7coaJ6wIS.jpg",
    "release_date": "2025-02-27",
    "title": "Counterattack",
    "video": false,
    "vote_average": 8.5,
    "vote_count": 530
  },
  {
    "adult": false,
    "backdrop_path": "/u6S87BzSml2m3h37GCbASZgGtCU.jpg",
    "genre_ids": [
      53
    ],
    "id": 1433371,
    "original_language": "mn",
    "original_title": "The Pursuit of Lust 3",
    "overview": "This intense erotic thriller follows a disheartened woman who goes on a drinking binge after a guy she met online never showed up for their first date. Unfortunately, her drunken state would make her fall victim to a strange taxi driver’s deranged fetishes.",
    "popularity": 128.21667767857144,
    "poster_path": "/uvGOLs5wX6YFq2EJqTljzykO3d1.jpg",
    "release_date": "2025-02-21",
    "title": "The Pursuit of Lust 3",
    "video": false,
    "vote_average": 0,
    "vote_count": 0
  },
  {
    "adult": false,
    "backdrop_path": "/AtciHGgpOU7ngsVhXbS2S5Spdlv.jpg",
    "genre_ids": [
      28,
      35
    ],
    "id": 1077782,
    "original_language": "en",
    "original_title": "Old Guy",
    "overview": "Stuck at a dead end but vying for the love of spunky club manager Anata, aging contract killer Danny Dolinski is thrilled when The Company pulls him back in the field, but only to train Gen Z newcomer Wihlborg, a prodigy assassin with an attitude.",
    "popularity": 113.51458214285715,
    "poster_path": "/ulVVfNY8bmy1RbHfY4zi3fOwGzh.jpg",
    "release_date": "2024-12-13",
    "title": "Old Guy",
    "video": false,
    "vote_average": 5.4,
    "vote_count": 50
  },
  {
    "adult": false,
    "backdrop_path": "/gFFqWsjLjRfipKzlzaYPD097FNC.jpg",
    "genre_ids": [
      28,
      80,
      53
    ],
    "id": 1126166,
    "original_language": "en",
    "original_title": "Flight Risk",
    "overview": "A U.S. Marshal escorts a government witness to trial after he's accused of getting involved with a mob boss, only to discover that the pilot who is transporting them is also a hitman sent to assassinate the informant. After they subdue him, they're forced to fly together after discovering that there are others attempting to eliminate them.",
    "popularity": 106.2720419642857,
    "poster_path": "/q0bCG4NX32iIEsRFZqRtuvzNCyZ.jpg",
    "release_date": "2025-01-22",
    "title": "Flight Risk",
    "video": false,
    "vote_average": 6.151,
    "vote_count": 523
  },
  {
    "adult": false,
    "backdrop_path": "/9nhjGaFLKtddDPtPaX5EmKqsWdH.jpg",
    "genre_ids": [
      10749,
      878,
      53
    ],
    "id": 950396,
    "original_language": "en",
    "original_title": "The Gorge",
    "overview": "Two highly trained operatives grow close from a distance after being sent to guard opposite sides of a mysterious gorge. When an evil below emerges, they must work together to survive what lies within.",
    "popularity": 101.926825,
    "poster_path": "/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg",
    "release_date": "2025-02-13",
    "title": "The Gorge",
    "video": false,
    "vote_average": 7.746,
    "vote_count": 2133
  },
  {
    "adult": false,
    "backdrop_path": "/mhKQ5ntqlXyck0TWh1pCpn42aAx.jpg",
    "genre_ids": [
      28,
      80,
      53
    ],
    "id": 1217379,
    "original_language": "en",
    "original_title": "Hellhound",
    "overview": "Ready to leave his profession behind, Loreno, an assassin, lends help to an old friend, Cetan, and taking one last job in Thailand seeking out a local kingpin. A lapse in judgment means Loreno crosses paths with old colleague Paul.",
    "popularity": 101.75095535714286,
    "poster_path": "/h1BtcTEk0pbe9XhbxrAp2oLKoWb.jpg",
    "release_date": "2024-06-20",
    "title": "Hellhound",
    "video": false,
    "vote_average": 6.3,
    "vote_count": 23
  },
  {
    "adult": false,
    "backdrop_path": "/hD2SN5bbqxk0kcRmsATJkXObgnZ.jpg",
    "genre_ids": [
      28,
      80,
      14,
      53
    ],
    "id": 1405338,
    "original_language": "ja",
    "original_title": "Demon City 鬼ゴロシ",
    "overview": "Framed for his family's murder and left for dead, an ex-hitman will stop at nothing to exact revenge on the masked demons who have taken over his city.",
    "popularity": 94.44450982142858,
    "poster_path": "/g5PqsFFrayyRL1Ldgib2lMYuJXg.jpg",
    "release_date": "2025-02-26",
    "title": "Demon City",
    "video": false,
    "vote_average": 6.864,
    "vote_count": 169
  },
  {
    "adult": false,
    "backdrop_path": "/ujtLvjVCBpgouQTyEG4qNVTxlXi.jpg",
    "genre_ids": [
      53,
      80,
      9648
    ],
    "id": 1210938,
    "original_language": "ko",
    "original_title": "계시록",
    "overview": "A pastor who believes in divine revelation and a detective haunted by visions pursue a missing person case — exposing their own demons in the process.",
    "popularity": 93.36690267857144,
    "poster_path": "/ak0HlRVsVzh8mvwIUZpZr0z6uqW.jpg",
    "release_date": "2025-03-20",
    "title": "Revelations",
    "video": false,
    "vote_average": 6.4,
    "vote_count": 46
  },
  {
    "adult": false,
    "backdrop_path": "/zOpe0eHsq0A2NvNyBbtT6sj53qV.jpg",
    "genre_ids": [
      28,
      878,
      35,
      10751,
      12,
      14
    ],
    "id": 939243,
    "original_language": "en",
    "original_title": "Sonic the Hedgehog 3",
    "overview": "Sonic, Knuckles, and Tails reunite against a powerful new adversary, Shadow, a mysterious villain with powers unlike anything they have faced before. With their abilities outmatched in every way, Team Sonic must seek out an unlikely alliance in hopes of stopping Shadow and protecting the planet.",
    "popularity": 91.20620357142857,
    "poster_path": "/d8Ryb8AunYAuycVKDp5HpdWPKgC.jpg",
    "release_date": "2024-12-19",
    "title": "Sonic the Hedgehog 3",
    "video": false,
    "vote_average": 7.8,
    "vote_count": 2269
  },
  {
    "adult": false,
    "backdrop_path": "/1w8kutrRucTd3wlYyu5QlUDMiG1.jpg",
    "genre_ids": [
      12,
      10751,
      16
    ],
    "id": 762509,
    "original_language": "en",
    "original_title": "Mufasa: The Lion King",
    "overview": "Mufasa, a cub lost and alone, meets a sympathetic lion named Taka, the heir to a royal bloodline. The chance meeting sets in motion an expansive journey of a group of misfits searching for their destiny.",
    "popularity": 90.63573214285715,
    "poster_path": "/lurEK87kukWNaHd0zYnsi3yzJrs.jpg",
    "release_date": "2024-12-18",
    "title": "Mufasa: The Lion King",
    "video": false,
    "vote_average": 7.5,
    "vote_count": 1699
  },
  {
    "adult": false,
    "backdrop_path": "/pwfXx2O3eFXi5dtWCV5XJPQJgqN.jpg",
    "genre_ids": [
      28,
      53
    ],
    "id": 1143407,
    "original_language": "hi",
    "original_title": "स्काई फ़ोर्स",
    "overview": "In the 1965 Indo-Pak War, India faces a devastating surprise attack. Wing Commander Ahuja leads a retaliatory strike, but Squadron Leader Vijaya goes missing after a heroic solo engagement against a superior enemy jet. Ahuja spends 23 years seeking the truth and uncovering a cover-up.",
    "popularity": 88.44163125,
    "poster_path": "/f1KLUpaW7rbXhUm5SxG1lpPFFCJ.jpg",
    "release_date": "2025-01-24",
    "title": "Sky Force",
    "video": false,
    "vote_average": 7.676,
    "vote_count": 17
  }
]
''';

List<Movie> getPopularMovies() {
  final List<dynamic> jsonList = jsonDecode(popularMoviesJson);
  return jsonList.map((json) => Movie.fromJson(json)).toList();
}
