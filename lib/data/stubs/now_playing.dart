// Dart
import 'dart:convert';

// Model
import '../../models/movie.dart';

const String nowPlayingMoviesJson = '''
[
  {
    "adult": false,
    "backdrop_path": "/qfAfE5auxsuxhxPpnETRAyTP5ff.jpg",
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
    "vote_average": 6.131,
    "vote_count": 1099
  },
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
    "vote_average": 6.1,
    "vote_count": 57
  },
  {
    "adult": false,
    "backdrop_path": "/k5F9jYfcsp4EFDVaUvyWd1uyXsX.jpg",
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
    "vote_count": 59
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
    "vote_count": 528
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
    "vote_average": 5.37,
    "vote_count": 50
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
    "vote_average": 6.364,
    "vote_count": 44
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
    "vote_average": 7.8,
    "vote_count": 2129
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
    "vote_average": 6.9,
    "vote_count": 167
  },
  {
    "adult": false,
    "backdrop_path": "/gjqtmaKgZCZhCYgMJwsd3JHIAUt.jpg",
    "genre_ids": [
      27
    ],
    "id": 937393,
    "original_language": "en",
    "original_title": "Bloat",
    "overview": "After a near-death drowning accident, a young boy's family is horrified to discover he has become possessed by a legendary demon from the depths of the lake. As the family races against time to save the boy's soul, the evil monster inside the child tears the family apart as it seeks to destroy everyone in its path.",
    "popularity": 75.08934732142858,
    "poster_path": "/nlutnb8dO390fo5zkRayYiVuKdU.jpg",
    "release_date": "2025-03-07",
    "title": "Bloat",
    "video": false,
    "vote_average": 4,
    "vote_count": 10
  },
  {
    "adult": false,
    "backdrop_path": "/qSh3Aav8Kcoe2D2Azr8Bh1J0HAa.jpg",
    "genre_ids": [
      53,
      18
    ],
    "id": 1145725,
    "original_language": "en",
    "original_title": "Tyler Perry's Duplicity",
    "overview": "High-powered attorney Marley faces her most personal case yet when she is tasked with uncovering the truth behind the murder of her best friend Fela’s husband. With the help of her boyfriend – a former cop turned private investigator – Marley’s search for what really happened leads her down a treacherous maze of deception and betrayal.",
    "popularity": 61.73856607142857,
    "poster_path": "/xNINmmVZuRn2MWo34Mj42OjBntN.jpg",
    "release_date": "2025-03-19",
    "title": "Tyler Perry's Duplicity",
    "video": false,
    "vote_average": 6.9,
    "vote_count": 51
  },
  {
    "adult": false,
    "backdrop_path": "/lsgT602GYV8ts97sKH1gWFtQs1k.jpg",
    "genre_ids": [
      16,
      12,
      35,
      10751,
      14
    ],
    "id": 1104845,
    "original_language": "en",
    "original_title": "Plankton: The Movie",
    "overview": "Plankton's tangled love story with his sentient computer wife goes sideways when she takes a stand — and decides to destroy the world without him.",
    "popularity": 58.44940357142857,
    "poster_path": "/hGaUNLF5VZbg9ovPTyjm9Rv5xWz.jpg",
    "release_date": "2025-03-08",
    "title": "Plankton: The Movie",
    "video": false,
    "vote_average": 7,
    "vote_count": 54
  },
  {
    "adult": false,
    "backdrop_path": "/jl2YIADk391yc6Qjy9JhgCRkHJk.jpg",
    "genre_ids": [
      16,
      18,
      35
    ],
    "id": 1064486,
    "original_language": "en",
    "original_title": "Memoir of a Snail",
    "overview": "Forcibly separated from her twin brother when they are orphaned, a melancholic misfit learns how to find confidence within herself amid the clutter of misfortunes and everyday life.",
    "popularity": 53.661046428571424,
    "poster_path": "/57AgZv1ITeBLShiNdchZ5153evs.jpg",
    "release_date": "2024-10-17",
    "title": "Memoir of a Snail",
    "video": false,
    "vote_average": 7.926,
    "vote_count": 311
  },
  {
    "adult": false,
    "backdrop_path": "/dGULFnPJKPh0sdu3F64YmQ0qcym.jpg",
    "genre_ids": [
      53,
      18
    ],
    "id": 972533,
    "original_language": "en",
    "original_title": "Last Breath",
    "overview": "Last Breath follows a seasoned deep-sea diver as he battles the raging elements to rescue his crewmate trapped hundreds of feet below the ocean's surface.",
    "popularity": 49.209574999999994,
    "poster_path": "/w04Xg5Bnqj7ECdCxTsHgqK6AtJW.jpg",
    "release_date": "2025-02-27",
    "title": "Last Breath",
    "video": false,
    "vote_average": 6.1,
    "vote_count": 77
  },
  {
    "adult": false,
    "backdrop_path": "/u7AZ5CdT2af8buRjmYCPXNyJssd.jpg",
    "genre_ids": [
      28,
      35
    ],
    "id": 1160956,
    "original_language": "zh",
    "original_title": "熊猫计划",
    "overview": "International action star Jackie Chan is invited to the adoption ceremony of a rare baby panda, but after an international crime syndicate attempts to kidnap the bear, Jackie has to save the bear using his stunt work skills.",
    "popularity": 48.572583928571426,
    "poster_path": "/juiMX25vVnEIjyPT8C7O9XWbEEl.jpg",
    "release_date": "2024-10-01",
    "title": "Panda Plan",
    "video": false,
    "vote_average": 7.047,
    "vote_count": 161
  },
  {
    "adult": false,
    "backdrop_path": "/aGgr2Q07AcyiWPGODoofgZDUEHp.jpg",
    "genre_ids": [
      28,
      35,
      10749
    ],
    "id": 1226406,
    "original_language": "en",
    "original_title": "Love Hurts",
    "overview": "A realtor is pulled back into the life he left behind after his former partner-in-crime resurfaces with an ominous message. With his crime-lord brother also on his trail, he must confront his past and the history he never fully buried.",
    "popularity": 47.45770446428571,
    "poster_path": "/skPPVeHoTTVVSJlb0Ib5vrqiuA4.jpg",
    "release_date": "2025-02-06",
    "title": "Love Hurts",
    "video": false,
    "vote_average": 6,
    "vote_count": 127
  },
  {
    "adult": false,
    "backdrop_path": "/8qXc6OLHoLHBxOFIjsfbZwWDFYH.jpg",
    "genre_ids": [
      28,
      80,
      18,
      53
    ],
    "id": 1230208,
    "original_language": "fr",
    "original_title": "Bastion 36",
    "overview": "Forced out of his elite unit, a troubled cop launches his own rogue investigation when mysterious killings claim the lives of his former colleagues.",
    "popularity": 47.49848392857143,
    "poster_path": "/AnDwpI8dY8iqJVUwVS5UotYAbB1.jpg",
    "release_date": "2025-02-27",
    "title": "Squad 36",
    "video": false,
    "vote_average": 6.3,
    "vote_count": 100
  },
  {
    "adult": false,
    "backdrop_path": "/st9M4O4imOuQVU35RMeYuEQfkvD.jpg",
    "genre_ids": [
      27,
      18
    ],
    "id": 1140535,
    "original_language": "en",
    "original_title": "Presence",
    "overview": "A couple, Rebekah and Chris, and their children, Tyler and Chloe, move into a seemingly normal suburban home. When strange occurrences occur, they begin to believe that there is something else in the house with them. The presence is about to disrupt their lives in unimaginable ways.",
    "popularity": 48.699214285714284,
    "poster_path": "/hZ8dTeBzigV5SVgwG1ikSROAFiS.jpg",
    "release_date": "2025-01-16",
    "title": "Presence",
    "video": false,
    "vote_average": 5.912,
    "vote_count": 226
  },
  {
    "adult": false,
    "backdrop_path": "/wLxQPbIM0Bcz832ekTVVlDq1AHV.jpg",
    "genre_ids": [
      35,
      27,
      878,
      53
    ],
    "id": 1084199,
    "original_language": "en",
    "original_title": "Companion",
    "overview": "During a weekend getaway at a secluded lakeside estate, a group of friends finds themselves entangled in a web of secrets, deception, and advanced technology. As tensions rise and loyalties are tested, they uncover unsettling truths about themselves and the world around them.",
    "popularity": 52.876930357142854,
    "poster_path": "/oCoTgC3UyWGfyQ9thE10ulWR7bn.jpg",
    "release_date": "2025-01-22",
    "title": "Companion",
    "video": false,
    "vote_average": 7.1,
    "vote_count": 852
  },
  {
    "adult": false,
    "backdrop_path": "/y12HU18e5FHNeqkSZdvMBEOY6BU.jpg",
    "genre_ids": [
      53,
      27,
      28
    ],
    "id": 1407861,
    "original_language": "en",
    "original_title": "The Bayou",
    "overview": "Vacation turns disaster when Houston grad Kyle and her friends survive a plane crash in the desolate Louisiana everglades, only to discover there's something way more dangerous lurking in the shallows.",
    "popularity": 45.839305357142855,
    "poster_path": "/sf6j1SbgDf7VTjL1MRq5MAQSOyE.jpg",
    "release_date": "2025-01-31",
    "title": "The Bayou",
    "video": false,
    "vote_average": 6.3,
    "vote_count": 37
  }
]
''';

List<Movie> getNowPlayingMovies() {
  final List<dynamic> jsonList = jsonDecode(nowPlayingMoviesJson);
  return jsonList.map((json) => Movie.fromJson(json)).toList();
}
