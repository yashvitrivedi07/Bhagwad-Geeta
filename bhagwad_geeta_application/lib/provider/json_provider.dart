import 'package:bhagwad_geeta_application/helper/json_helper.dart';
import 'package:bhagwad_geeta_application/modal/json_modal.dart';
import 'package:flutter/material.dart';

class JsonProvider with ChangeNotifier {
  JsonHelper jh = JsonHelper();
  EnglishModal englishList = EnglishModal();
  HindiModal hindiList = HindiModal();
  List<SanskritModal> sanskritList = [];
  List<SanskritVerseModal> sanskritVerseList = [];
  List<SanskritVerseModal> fList = [];
  List<DetailModal> feList = [];
  List<HindiVerseModal> fhList = [];
  String lang = "hindi";
  int chapterIndex = 0;

  void getEnglish() async {
    englishList = await jh.englishParsing();
    notifyListeners();
  }

  void getHindi() async {
    hindiList = await jh.hindiParsing();
    notifyListeners();
  }

  void getSanskrit() async {
    sanskritList = await jh.sanskritParsing();
    notifyListeners();
  }

  void getSanskritVerse() async {
    sanskritVerseList = await jh.sanskritVerseParsing();
    notifyListeners();
  }

  void getLang(String l) {
    lang = l;
    notifyListeners();
  }

  void getChapterIndex(int i) {
    chapterIndex = i;
    notifyListeners();
  }

  void filterList() {
    if (lang == "sanskrit") {
      for (int i = 0; i < sanskritVerseList.length; i++) {
        if (chapterIndex + 1 == sanskritVerseList[i].chapter_number) {
          fList.add(sanskritVerseList[i]);
        }
      }
    } else if (lang == "english") {
      for (int i = 0; i < englishList.verseList!.length; i++) {
        if ("${chapterIndex + 1}" == englishList.verseList![i].name) {
          if (englishList.verseList![i].chapterDetail != null) {
            feList.addAll(englishList.verseList![i].chapterDetail!);
          }
        }
      }
    } else if (lang == "hindi") {
      for (int i = 0; i < hindiList.hindiVerse!.length; i++) {
        if ("${chapterIndex + 1}" == hindiList.hindiVerse![i].name) {
          fhList.add(hindiList.hindiVerse![i]);
        }
      }
    }

    notifyListeners();
  }
}
