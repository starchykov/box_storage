import 'package:flutter/cupertino.dart';

@immutable
class BoxCategory {
  final String id;
  final String boxCategoryName;
  final String boxCategoryDescription;
  final String boxCategoryItemsCount;

  const BoxCategory({
    required this.id,
    required this.boxCategoryName,
    required this.boxCategoryDescription,
    required this.boxCategoryItemsCount,
  });

  BoxCategory copyWith({
    String? id,
    String? boxCategoryName,
    String? boxCategoryDescription,
    String? boxCategoryItemsCount,
  }) {
    return BoxCategory(
      id: id ?? this.id,
      boxCategoryName: boxCategoryName ?? this.boxCategoryName,
      boxCategoryDescription: boxCategoryDescription ?? this.boxCategoryDescription,
      boxCategoryItemsCount: boxCategoryItemsCount ?? this.boxCategoryItemsCount,
    );
  }
}
