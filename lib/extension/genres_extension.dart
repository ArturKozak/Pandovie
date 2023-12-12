import 'package:pandovie/resource/app_animations.dart';

extension GenresHelper on String {
  String getEmodji() {
    String emodji = '';

    switch (toLowerCase()) {
      case 'horror':
        emodji = '😱';
        break;
      case 'action':
        emodji = '🥷';
        break;
      case 'drama':
        emodji = '😭';
        break;
      case 'thriller':
        emodji = '😨';
        break;
      case 'science fiction':
        emodji = '👽';
        break;
      case 'comedy':
        emodji = '😹';
        break;
      case 'western':
        emodji = '🤠';
        break;
      case 'romance':
        emodji = '💕';
        break;
      case 'fantasy':
        emodji = '🧙‍♂️';
        break;
      case 'adventure':
        emodji = '😎';
        break;
      case 'crime film':
        emodji = '👮‍♀️';
        break;
      case 'animation':
        emodji = '🧞‍♂️';
        break;
      case 'documentary':
        emodji = '🧑‍🎓';
        break;
      case 'noir':
        emodji = '🫥';
        break;
      case 'musical':
        emodji = '🎹';
        break;
      case 'musical genre':
        emodji = '🎹';
        break;
      case 'historical Fiction':
        emodji = '🏺';
        break;
      case 'hindi cinema':
        emodji = '👳‍♂️';
        break;
      case 'experimental':
        emodji = '😵‍💫';
        break;
      case 'television':
        emodji = '📺';
        break;
      case 'narrative':
        emodji = '🧙‍♂️';
        break;
      case 'mystery':
        emodji = '🫣';
        break;
      case 'crime':
        emodji = '🕵️';
      case 'historical film':
        emodji = '🏛';
      case 'fiction':
        emodji = '🏰';
      case 'dark comedy':
        emodji = '😈';
      case 'romantic comedy':
        emodji = '😻';
      case 'martial Arts':
        emodji = '🥷';
      case 'sports':
        emodji = '⚽️';
      case 'slasher':
        emodji = '🪓';
      case 'children\'s film':
        emodji = '👶';
      case 'short':
        emodji = '🤔';
      case 'splatter':
        emodji = '🩸';
        break;
      case 'action/adventure':
        emodji = '🤯';
        break;
      case 'satire':
        emodji = '😏';
        break;
      case 'animated film':
        emodji = '🧞‍♂️';
        break;
      case 'hybrid genre':
        emodji = '🫠';
        break;
      case 'melodrama':
        emodji = '🤧';
        break;
      case 'historical drama':
        emodji = '😢';
        break;
      case 'action fiction':
        emodji = '🦹‍♂️';
        break;
      case 'epic':
        emodji = '🤯';
        break;
      case 'history':
        emodji = '🏺';
        break;
      case 'family':
        emodji = '👨‍👩‍👦';
        break;
      default:
        emodji = '🙂';
    }
    return emodji;
  }

  String getGifEmodji() {
    String emodji = '';

    switch (toLowerCase()) {
      case 'horror':
        emodji = AppAnimations.horor;
        break;
      case 'action':
        emodji = AppAnimations.action;
        break;
      // case 'drama':
      //   emodji = '😭';
      //   break;
      // case 'thriller':
      //   emodji = '😨';
      //   break;
      // case 'science fiction':
      //   emodji = '👽';
      //   break;
      case 'comedy':
        emodji = AppAnimations.smile;
        break;
      // case 'western':
      //   emodji = '🤠';
      //   break;
      // case 'romance':
      //   emodji = AppAnimations.romantic;
      //   break;
      // case 'fantasy':
      //   emodji = '🧙‍♂️';
      //   break;
      // case 'adventure':
      //   emodji = '😎';
      //   break;
      // case 'crime film':
      //   emodji = '👮‍♀️';
      //   break;
      // case 'animation':
      //   emodji = '🧞‍♂️';
      //   break;
      // case 'documentary':
      //   emodji = '🧑‍🎓';
      //   break;
      // case 'noir':
      //   emodji = '🫥';
      //   break;
      // case 'musical':
      //   emodji = '🎹';
      //   break;
      // case 'musical genre':
      //   emodji = '🎹';
      //   break;
      // case 'historical Fiction':
      //   emodji = '🏺';
      //   break;
      // case 'hindi cinema':
      //   emodji = '👳‍♂️';
      //   break;
      // case 'experimental':
      //   emodji = '😵‍💫';
      //   break;
      // case 'television':
      //   emodji = '📺';
      //   break;
      // case 'narrative':
      //   emodji = '🧙‍♂️';
      //   break;
      // case 'mystery':
      //   emodji = '🫣';
      //   break;
      // case 'crime':
      //   emodji = '🕵️';
      // case 'historical film':
      //   emodji = '🏛';
      // case 'fiction':
      //   emodji = '🏰';
      // case 'dark comedy':
      //   emodji = '😈';
      // case 'romantic comedy':
      //   emodji = '😻';
      // case 'martial Arts':
      //   emodji = '🥷';
      // case 'sports':
      //   emodji = '⚽️';
      case 'slasher':
        emodji = AppAnimations.slasher;
      // case 'children\'s film':
      //   emodji = '👶';
      // case 'short':
      //   emodji = '🤔';
      // case 'splatter':
      //   emodji = '🩸';
      //   break;
      // case 'action/adventure':
      //   emodji = '🤯';
      //   break;
      // case 'satire':
      //   emodji = '😏';
      //   break;
      // case 'animated film':
      //   emodji = '🧞‍♂️';
      //   break;
      // case 'hybrid genre':
      //   emodji = '🫠';
      //   break;
      // case 'melodrama':
      //   emodji = '🤧';
      //   break;
      // case 'historical drama':
      //   emodji = '😢';
      //   break;
      // case 'action fiction':
      //   emodji = '🦹‍♂️';
      //   break;
      // case 'epic':
      //   emodji = '🤯';
      //   break;
      // case 'history':
      //   emodji = '🏺';
      //   break;
      //         case 'family':
      //   emodji = '👨‍👩‍👦';
      //   break;
      default:
        emodji = AppAnimations.angry;
    }
    return emodji;
  }
}
