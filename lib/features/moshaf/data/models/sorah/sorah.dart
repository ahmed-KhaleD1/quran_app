import 'package:collection/collection.dart';

import 'ayah.dart';

class SorahModel {
  int? number;
  String name;
  String englishName;
  String? revelationType;
  List<Ayah>? ayahs;

  SorahModel({
    this.number,
    required this.name,
    required this.englishName,
    this.revelationType,
    this.ayahs,
  });

  factory SorahModel.fromJson(Map<String, dynamic> json) => SorahModel(
        number: json['number'] as int?,
        name: json['name'] ?? '',
        englishName: json['englishName'] ?? '',
        revelationType: json['revelationType'] as String?,
        ayahs: (json['ayahs'] as List<dynamic>?)
            ?.map((e) => Ayah.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'name': name,
        'englishName': englishName,
        'revelationType': revelationType,
        'ayahs': ayahs?.map((e) => e.toJson()).toList(),
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SorahModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      number.hashCode ^
      name.hashCode ^
      englishName.hashCode ^
      revelationType.hashCode ^
      ayahs.hashCode;
}
