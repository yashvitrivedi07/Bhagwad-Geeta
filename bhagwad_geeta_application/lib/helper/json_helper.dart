import 'dart:convert';

import 'package:bhagwad_geeta_application/modal/json_modal.dart';
import 'package:flutter/services.dart';

class JsonHelper {
  Future<EnglishModal> englishParsing() async {
    String json = await rootBundle.loadString('assets/json_bank/english.json');
    var englishList = jsonDecode(json);
    EnglishModal modal = EnglishModal.mapToModal(englishList);

    return modal;
  }

  Future<HindiModal> hindiParsing() async {
    String json = await rootBundle.loadString('assets/json_bank/hindi.json');
    var hindiList = jsonDecode(json);
    HindiModal modal = HindiModal.mapToModal(hindiList);

    return modal;
  }

  Future<List<SanskritModal>> sanskritParsing() async {
    String json =
        await rootBundle.loadString('assets/json_bank/sanskritch.json');
    List sanskrit = jsonDecode(json);

    List<SanskritModal> sanskritList =
        sanskrit.map((e) => SanskritModal.mapToModal(e)).toList();
    return sanskritList;
  }

  Future<List<SanskritVerseModal>> sanskritVerseParsing() async {
    String json =
        await rootBundle.loadString('assets/json_bank/sanskritverse.json');
    List verse = jsonDecode(json);
    List<SanskritVerseModal> verseSlist =
        verse.map((e) => SanskritVerseModal.mapToModal(e)).toList();

    return verseSlist;
  }
}
