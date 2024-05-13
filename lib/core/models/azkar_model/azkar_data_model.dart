import 'package:collection/collection.dart';

class AzkarDataModel {
  String? category;
  String? count;
  String? description;
  String? reference;
  String? content;

  AzkarDataModel({
    this.category,
    this.count,
    this.description,
    this.reference,
    this.content,
  });

  factory AzkarDataModel.fromJson(Map<String, dynamic> json) => AzkarDataModel(
        category: json['category'] as String?,
        count: json['count'] as String?,
        description: json['description'] as String?,
        reference: json['reference'] as String?,
        content: json['content'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'category': category,
        'count': count,
        'description': description,
        'reference': reference,
        'content': content,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AzkarDataModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      category.hashCode ^
      count.hashCode ^
      description.hashCode ^
      reference.hashCode ^
      content.hashCode;
}
