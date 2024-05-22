import 'package:collection/collection.dart';

class Ayah {
  int? number;
  String? text;
  int? numberInSurah;
  int? juz;
  int? page;
  int? hizbQuarter;
  bool? sajda;
  String? tafseer;

  Ayah({
    this.number,
    this.text,
    this.numberInSurah,
    this.juz,
    this.page,
    this.hizbQuarter,
    this.sajda,
    this.tafseer,
  });

  factory Ayah.fromJson(Map<String, dynamic> json, String tafseer) => Ayah(
      number: json['number'] as int?,
      text: json['text'] as String?,
      numberInSurah: json['numberInSurah'] as int?,
      juz: json['juz'] as int?,
      page: json['page'] as int?,
      hizbQuarter: json['hizbQuarter'] as int?,
      sajda: json['sajda'] is Map<String, dynamic>
          ? json['sajda']['recommended']
          : json['sajda'] as bool?,
      tafseer: tafseer);

  Map<String, dynamic> toJson() => {
        'number': number,
        'text': text,
        'numberInSurah': numberInSurah,
        'juz': juz,
        'page': page,
        'hizbQuarter': hizbQuarter,
        'sajda': sajda,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Ayah) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      number.hashCode ^
      text.hashCode ^
      numberInSurah.hashCode ^
      juz.hashCode ^
      page.hashCode ^
      hizbQuarter.hashCode ^
      sajda.hashCode;
}
