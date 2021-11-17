import 'package:first_flutter_app/data/answer.dart';

class Question {
  static final List<Answer> questions = [
    Answer(
      1,
      'Czy wolno siadać na schodach?',
      [
        'Nigdy w życiu robią to tylko biolchemy',
        'Nie',
        'Tak',
        'Oczywiście, ostatnio sam siedziałem',
      ],
      [
        40,
        20,
        -20,
        -100,
      ],
    ),
    Answer(
      2,
      'Masz lekcje na 4 piętrze tuż po lekcjach w chóralnej, a przerwa ma 5 min, co robisz?',
      [
        'Wjeżdżam windą by zaoszczędzić czas',
        'Spóźniam się, bo rozmawiałem z kolegami po drodze',
        'Wchodzę po schodach ',
        'Wbiegam po schodach',
      ],
      [
        -40,
        -20,
        20,
        40,
      ],
    ),
    Answer(
      3,
      'Kto powinien wygrać wybory SzRU?',
      [
        'Każdy podstawowy kandydat',
        'Mleczarz',
        'Admin Shitcontentu',
        'Twórca tej stronki',
      ],
      [-40, 20, 20, 40],
    ),
    Answer(
      4,
      '*Hymn Ósemki* jak zareagujesz?',
      [
        'TUTUTUTUTUTUTU',
        'nie śpiewam, bo jest to trochę cringe',
        'śpiewam, ale po cichu bo się wstydzę przyznać',
        'śpiewam na cały głos, tak aby cały Poznań usłyszał, bo jestem dumnym ósemkowiczem',
      ],
      [-40, -20, 20, 40],
    ),
  ];
}
