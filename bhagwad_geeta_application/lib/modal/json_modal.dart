class EnglishModal {
  List<ChapterModal>? chapterList = [];
  List<VersesModal>? verseList = [];

  EnglishModal({this.chapterList, this.verseList});

  factory EnglishModal.mapToModal(Map m) {
    List verse = m['verses'];
    List ch = m['chapters'];
    return EnglishModal(
        chapterList: ch.map((e) => ChapterModal.mapToModal(e)).toList(),
        verseList: verse.map((e) => VersesModal.mapToModal(e)).toList());
  }
}

class ChapterModal {
  int? chapter_number, verses_count;
  String? chapter_summary, name, name_meaning;

  ChapterModal(
      {this.chapter_number,
      this.chapter_summary,
      this.name,
      this.name_meaning,
      this.verses_count});

  factory ChapterModal.mapToModal(Map m) {
    return ChapterModal(
        chapter_number: m['chapter_number'],
        chapter_summary: m['chapter_summary'],
        name: m['name'],
        name_meaning: m['name_meaning'],
        verses_count: m['verses_count']);
  }
}

class VersesModal {
  String? name;
  List<DetailModal>? chapterDetail = [];

  VersesModal({this.chapterDetail, this.name});

  factory VersesModal.mapToModal(Map m) {
    List chapterD = m['chapter'];
    return VersesModal(
        chapterDetail: chapterD.map((e) => DetailModal.mapToModal(e)).toList(),
        name: m['name']);
  }
}

class DetailModal {
  String? english, text, verse_number, word_meanings, transliteration;

  DetailModal(
      {this.english,
      this.text,
      this.transliteration,
      this.verse_number,
      this.word_meanings});

  factory DetailModal.mapToModal(Map m) {
    return DetailModal(
        english: m['english'],
        text: m['text'],
        transliteration: m['transliteration'],
        verse_number: m['verse_number'],
        word_meanings: m['word_meanings']);
  }
}

// Hindi ----------- Hindi ----------- Hindi ----------- Hindi -----------

class HindiModal {
  String? chapter_hindi, verse_hindi, verse_meaning_hindi, word_meaning_hindi;
  List<HindiChapterModal>? hindiChapter = [];
  List<HindiVerseModal>? hindiVerse = [];

  HindiModal(
      {this.chapter_hindi,
      this.hindiChapter,
      this.hindiVerse,
      this.verse_hindi,
      this.verse_meaning_hindi,
      this.word_meaning_hindi});

  factory HindiModal.mapToModal(Map m) {
    List ch = m['chapters'];
    List verse = m['verses'];
    return HindiModal(
        chapter_hindi: m['chapter_hindi'],
        hindiChapter: ch.map((e) => HindiChapterModal.mapToModal(e)).toList(),
        hindiVerse: verse.map((e) => HindiVerseModal.mapToModal(e)).toList(),
        verse_hindi: m['verse_hindi'],
        verse_meaning_hindi: m['verse_meaning_hindi'],
        word_meaning_hindi: m['word_meaning_hindi']);
  }
}

class HindiChapterModal {
  String? chapter_number, chapter_summary, name, name_meaning;
  int? verses_count;

  HindiChapterModal(
      {this.chapter_number,
      this.chapter_summary,
      this.name,
      this.name_meaning,
      this.verses_count});

  factory HindiChapterModal.mapToModal(Map m) {
    return HindiChapterModal(
        chapter_number: m['chapter_number'],
        chapter_summary: m['chapter_summary'],
        name: m['name'],
        name_meaning: m['name_meaning'],
        verses_count: m['verses_count']);
  }
}

class HindiVerseModal {
  String? name;
  List<HindiVerseDetailModal>? detail = [];

  HindiVerseModal({this.detail, this.name});

  factory HindiVerseModal.mapToModal(Map m) {
    List detail = m['chapter'];
    return HindiVerseModal(
        detail: detail.map((e) => HindiVerseDetailModal.mapToModal(e)).toList(),
        name: m['name']);
  }
}

class HindiVerseDetailModal {
  String? meaning, text, verse_number, word_meanings;

  HindiVerseDetailModal(
      {this.meaning, this.text, this.verse_number, this.word_meanings});

  factory HindiVerseDetailModal.mapToModal(Map m) {
    return HindiVerseDetailModal(
        meaning: m['meaning'],
        text: m['text'],
        verse_number: m['verse_number'],
        word_meanings: m['word_meanings']);
  }
}

// sanskrit--------------sanskrit--------------sanskrit--------------sanskrit--------------

class SanskritModal {
  int? chapter_number, verses_count;
  String? name, name_meaning, name_translation, chapter_summary_hindi;

  SanskritModal(
      {this.chapter_number,
      this.chapter_summary_hindi,
      this.name,
      this.name_meaning,
      this.name_translation,
      this.verses_count});

  factory SanskritModal.mapToModal(Map m) {
    return SanskritModal(
        chapter_number: m['chapter_number'],
        chapter_summary_hindi: m['chapter_summary_hindi'],
        name: m['name'],
        name_meaning: m['name_meaning'],
        name_translation: m['name_translation'],
        verses_count: m['verses_count']);
  }
}

class SanskritVerseModal {
  int? chapter_number, verse_number;
  String? text, transliteration, word_meanings;

  SanskritVerseModal(
      {this.chapter_number,
      this.text,
      this.transliteration,
      this.verse_number,
      this.word_meanings});

  factory SanskritVerseModal.mapToModal(Map m) {
    return SanskritVerseModal(
        chapter_number: m['chapter_number'],
        text: m['text'],
        transliteration: m['transliteration'],
        verse_number: m['verse_number'],
        word_meanings: m['word_meanings']);
  }
}
