// Dart
import 'dart:convert';

// Model
import '../../models/movie.dart';

const String upcomingMoviesJson = '''
[
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
  },
  {
    "adult": false,
    "backdrop_path": "/qSOMdbZ6AOdHR999HWwVAh6ALFI.jpg",
    "genre_ids": [
      28,
      80,
      53
    ],
    "id": 1249289,
    "original_language": "en",
    "original_title": "Alarum",
    "overview": "Two married spies caught in the crosshairs of an international intelligence network will stop at nothing to obtain a critical asset. Joe and Lara are agents living off the grid whose quiet retreat at a winter resort is blown to shreds when members of the old guard suspect the two may have joined an elite team of rogue spies, known as Alarum.",
    "popularity": 36.62375625,
    "poster_path": "/v313aUGmMNj6yNveaiQXysBmjVS.jpg",
    "release_date": "2025-01-16",
    "title": "Alarum",
    "video": false,
    "vote_average": 5.792,
    "vote_count": 231
  },
  {
    "adult": false,
    "backdrop_path": "/wwtZN9fy6BaFguj6wGPV0ZtCLHD.jpg",
    "genre_ids": [
      18,
      14
    ],
    "id": 1128752,
    "original_language": "en",
    "original_title": "Bird",
    "overview": "12-year-old Bailey lives with her single dad Bug and brother Hunter in a squat in North Kent. Bug doesn’t have much time for his kids, and Bailey, who is approaching puberty, seeks attention and adventure elsewhere.",
    "popularity": 28.659826785714284,
    "poster_path": "/96LljvrTGesFPzRiytTrBgPV8W9.jpg",
    "release_date": "2024-11-08",
    "title": "Bird",
    "video": false,
    "vote_average": 7.3,
    "vote_count": 94
  },
  {
    "adult": false,
    "backdrop_path": "/iXU87IdtNsYt7n6OigPJBDdbFf1.jpg",
    "genre_ids": [
      10751,
      16,
      35,
      28
    ],
    "id": 774370,
    "original_language": "en",
    "original_title": "Dog Man",
    "overview": "When a faithful police dog and his human police officer owner are injured together on the job, a harebrained but life-saving surgery fuses the two of them together and Dog Man is born. Dog Man is sworn to protect and serve—and fetch, sit and roll over. As Dog Man embraces his new identity and strives to impress his Chief, he must stop the pretty evil plots of feline supervillain Petey the Cat.",
    "popularity": 30.183674107142856,
    "poster_path": "/89wNiexZdvLQ41OQWIsQy4O6jAQ.jpg",
    "release_date": "2025-01-24",
    "title": "Dog Man",
    "video": false,
    "vote_average": 7.8,
    "vote_count": 172
  },
  {
    "adult": false,
    "backdrop_path": "/gxO51FVgADhYGGnnRPIlutVqb30.jpg",
    "genre_ids": [
      18,
      53,
      9648
    ],
    "id": 1233575,
    "original_language": "en",
    "original_title": "Black Bag",
    "overview": "When his beloved wife is suspected of betraying the nation, an intelligence agent faces the ultimate test – loyalty to his marriage or his country.",
    "popularity": 29.07421339285714,
    "poster_path": "/9z32e4ziLQs10NYewgO2CqUWjM7.jpg",
    "release_date": "2025-03-12",
    "title": "Black Bag",
    "video": false,
    "vote_average": 6.7,
    "vote_count": 91
  },
  {
    "adult": false,
    "backdrop_path": "/ag66gJCiZ06q1GSJuQlhGLi3Udx.jpg",
    "genre_ids": [
      27,
      53
    ],
    "id": 1138194,
    "original_language": "en",
    "original_title": "Heretic",
    "overview": "Two young missionaries are forced to prove their faith when they knock on the wrong door and are greeted by a diabolical Mr. Reed, becoming ensnared in his deadly game of cat-and-mouse.",
    "popularity": 26.716673214285713,
    "poster_path": "/fr96XzlzsONrQrGfdLMiwtQjott.jpg",
    "release_date": "2024-10-31",
    "title": "Heretic",
    "video": false,
    "vote_average": 7.1,
    "vote_count": 1404
  },
  {
    "adult": false,
    "backdrop_path": "/hAQnXxOwCjgYcKRgTdYPRC8neqL.jpg",
    "genre_ids": [
      28,
      18
    ],
    "id": 811941,
    "original_language": "te",
    "original_title": "దేవర: Part 1",
    "overview": "Devara, a fearless man from a coastal region, embarks on a perilous journey into the treacherous world of the sea to safeguard the lives of his people. Unbeknownst to him, his brother Bhaira is plotting a conspiracy against him. As events unfold, Devara passes on his legacy to his mild-mannered and timid son, Varada.",
    "popularity": 25.41748125,
    "poster_path": "/A9ENz6d4lC3UYOX8Z1gJwDEo1sM.jpg",
    "release_date": "2024-09-26",
    "title": "Devara : Part 1",
    "video": false,
    "vote_average": 7,
    "vote_count": 179
  },
  {
    "adult": false,
    "backdrop_path": "/nB6IR9XfdRpVRKCz85uT97EjgwB.jpg",
    "genre_ids": [
      16,
      28,
      12,
      14
    ],
    "id": 1333100,
    "original_language": "ja",
    "original_title": "劇場版「進撃の巨人」完結編 THE LAST ATTACK",
    "overview": "A colossal-sized omnibus film bringing together the last two episodes of Attack on Titan in the franchise's first-ever theatrical experience. After venturing beyond the walls and separated from his comrades, Eren finds himself inspired by this new truth and plots the Rumbling, a terrifying plan to eradicate every living thing in the world. With the fate of the world hanging in the balance, a motley crew of Eren's former comrades and enemies scramble to halt his deadly mission. The only question is, can they stop him?",
    "popularity": 22.994523214285714,
    "poster_path": "/wgwldDDlTDDMrluOMkpSA8lyKjv.jpg",
    "release_date": "2024-11-08",
    "title": "Attack on Titan: THE LAST ATTACK",
    "video": false,
    "vote_average": 8.5,
    "vote_count": 34
  },
  {
    "adult": false,
    "backdrop_path": "/18TSJF1WLA4CkymvVUcKDBwUJ9F.jpg",
    "genre_ids": [
      27,
      53
    ],
    "id": 1034541,
    "original_language": "en",
    "original_title": "Terrifier 3",
    "overview": "Five years after surviving Art the Clown's Halloween massacre, Sienna and Jonathan are still struggling to rebuild their shattered lives. As the holiday season approaches, they try to embrace the Christmas spirit and leave the horrors of the past behind. But just when they think they're safe, Art returns, determined to turn their holiday cheer into a new nightmare. The festive season quickly unravels as Art unleashes his twisted brand of terror, proving that no holiday is safe.",
    "popularity": 21.036694642857146,
    "poster_path": "/ju10W5gl3PPK3b7TjEmVOZap51I.jpg",
    "release_date": "2024-10-09",
    "title": "Terrifier 3",
    "video": false,
    "vote_average": 6.9,
    "vote_count": 1516
  },
  {
    "adult": false,
    "backdrop_path": "/bNTHSd3UqqLzIVwbDOGPnx3ScfF.jpg",
    "genre_ids": [
      16,
      35,
      14,
      12,
      10751
    ],
    "id": 808,
    "original_language": "en",
    "original_title": "Shrek",
    "overview": "It ain't easy bein' green -- especially if you're a likable (albeit smelly) ogre named Shrek. On a mission to retrieve a gorgeous princess from the clutches of a fire-breathing dragon, Shrek teams up with an unlikely compatriot -- a wisecracking donkey.",
    "popularity": 21.848008035714287,
    "poster_path": "/o04jZs5SXhbvhqO4981W7KJXOWZ.jpg",
    "release_date": "2001-05-18",
    "title": "Shrek",
    "video": false,
    "vote_average": 7.7,
    "vote_count": 17528
  },
  {
    "adult": false,
    "backdrop_path": "/81O1ENKdJPRS15Icr2JmQabKy1j.jpg",
    "genre_ids": [
      18,
      10751
    ],
    "id": 765897,
    "original_language": "en",
    "original_title": "The Unbreakable Boy",
    "overview": "When Scott and Teresa LeRette learn that their son Austin is both autistic and has brittle bone disease, they initially worry for their son’s future. But with Scott’s growing faith and Austin’s incredible spirit, they become 'unbreakable', finding joy, gratitude, and courage even in the most trying times.",
    "popularity": 16.45222232142857,
    "poster_path": "/gD27DMU9jAnjoQp4yoOK2XCjiwN.jpg",
    "release_date": "2025-02-20",
    "title": "The Unbreakable Boy",
    "video": false,
    "vote_average": 6.395,
    "vote_count": 19
  },
  {
    "adult": false,
    "backdrop_path": "/c9xmB53umjnrCMS4pZz11clF3yJ.jpg",
    "genre_ids": [
      16,
      14,
      12
    ],
    "id": 980477,
    "original_language": "zh",
    "original_title": "哪吒之魔童闹海",
    "overview": "Following the Tribulation, although the souls of Ne Zha and Ao Bing were preserved, their physical bodies will soon be destroyed. Tai Yi Zhen Ren plans to use the Seven Colored Lotus to reshape their physical forms, but encounters numerous difficulties. What will become of Ne Zha and Ao Bing?",
    "popularity": 20.31958482142857,
    "poster_path": "/cb5NyNrqiCNNoDkA8FfxHAtypdG.jpg",
    "release_date": "2025-01-29",
    "title": "Ne Zha 2",
    "video": false,
    "vote_average": 7.8,
    "vote_count": 140
  },
  {
    "adult": false,
    "backdrop_path": "/cHzalKoJFzw8z1krTYghu2qzHV9.jpg",
    "genre_ids": [
      35
    ],
    "id": 1056648,
    "original_language": "fr",
    "original_title": "Le Procès du Chien",
    "overview": "April, an idealistic lawyer dedicated to lost causes, agrees to defend Cosmos, a dog that has bitten three people, leading to the first canine trial. She has no choice but to win the case, as otherwise, her unusual client will be put down.",
    "popularity": 13.07537857142857,
    "poster_path": "/pO0QHRYxSLiFGW75JwHYucEdz72.jpg",
    "release_date": "2024-09-11",
    "title": "Dog on Trial",
    "video": false,
    "vote_average": 6.2,
    "vote_count": 38
  },
  {
    "adult": false,
    "backdrop_path": "/x0pkoGlwWdkzRxgQioD3cUG0awu.jpg",
    "genre_ids": [
      18,
      36
    ],
    "id": 1000837,
    "original_language": "pt",
    "original_title": "Ainda Estou Aqui",
    "overview": "In 1971, military dictatorship in Brazil reaches its height. The Paiva family — Rubens, Eunice, and their five children — live in a beachside house in Rio, open to all their friends. One day, Rubens is taken for questioning and does not return.",
    "popularity": 15.60883125,
    "poster_path": "/gZnsMbhCvhzAQlKaVpeFRHYjGyb.jpg",
    "release_date": "2024-09-19",
    "title": "I'm Still Here",
    "video": false,
    "vote_average": 7.961,
    "vote_count": 535
  },
  {
    "adult": false,
    "backdrop_path": "/zwSDvbnN51JqU1ULzPnEc22DkqV.jpg",
    "genre_ids": [
      10749,
      35,
      18
    ],
    "id": 1272149,
    "original_language": "en",
    "original_title": "Bridget Jones: Mad About the Boy",
    "overview": "Bridget Jones navigates life as a widow and single mum with the help of her family, friends, and former lover, Daniel. Back to work and on the apps, she's pursued by a younger man and maybe – just maybe – her son's science teacher.",
    "popularity": 12.5725625,
    "poster_path": "/taEVBdVSqYo9YeN3ycw2SosklZL.jpg",
    "release_date": "2025-02-12",
    "title": "Bridget Jones: Mad About the Boy",
    "video": false,
    "vote_average": 6.7,
    "vote_count": 260
  },
  {
    "adult": false,
    "backdrop_path": "/aACb16EooaTSWGHwjsoeGe8DmyF.jpg",
    "genre_ids": [
      10749,
      18
    ],
    "id": 1109255,
    "original_language": "it",
    "original_title": "Parthenope",
    "overview": "Parthenope, born in the sea near Naples in 1950, is beautiful, enigmatic, and intelligent. She is shamelessly courted by many. However, beauty comes at a cost.",
    "popularity": 15.488394642857143,
    "poster_path": "/5SqICqUQaYFeZs1UnBZ4AN6DwcP.jpg",
    "release_date": "2024-10-19",
    "title": "Parthenope",
    "video": false,
    "vote_average": 6.9,
    "vote_count": 469
  },
  {
    "adult": false,
    "backdrop_path": "/evFChfYeD2LqobEJf8iQsrYcGTw.jpg",
    "genre_ids": [
      28,
      80,
      53,
      18
    ],
    "id": 1182387,
    "original_language": "en",
    "original_title": "Armor",
    "overview": "Armored truck security guard James Brody is working with his son Casey transporting millions of dollars between banks when a team of thieves led by Rook orchestrate a takeover of their truck to seize the riches. Following a violent car chase, Rook soon has the armored truck surrounded and James and Casey find themselves cornered onto a decrepit bridge.",
    "popularity": 13.440000892857142,
    "poster_path": "/pnXLFioDeftqjlCVlRmXvIdMsdP.jpg",
    "release_date": "2024-10-30",
    "title": "Armor",
    "video": false,
    "vote_average": 5.632,
    "vote_count": 190
  },
  {
    "adult": false,
    "backdrop_path": "/wP0NGOGf2PG4lHXHWEqFW0kBOye.jpg",
    "genre_ids": [
      10402,
      18
    ],
    "id": 799766,
    "original_language": "en",
    "original_title": "Better Man",
    "overview": "Follow Robbie Williams' journey from childhood, to being the youngest member of chart-topping boyband Take That, through to his unparalleled achievements as a record-breaking solo artist – all the while confronting the challenges that stratospheric fame and success can bring.",
    "popularity": 14.262269642857143,
    "poster_path": "/fbGCmMp0HlYnAPv28GOENPShezM.jpg",
    "release_date": "2024-12-06",
    "title": "Better Man",
    "video": false,
    "vote_average": 7.8,
    "vote_count": 347
  }
]
''';

List<Movie> getUpcomingMovies() {
  final List<dynamic> jsonList = jsonDecode(upcomingMoviesJson);
  return jsonList.map((json) => Movie.fromJson(json)).toList();
}
