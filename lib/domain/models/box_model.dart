import 'package:box_storage/domain/models/box_thing_model.dart';
import 'package:flutter/cupertino.dart';

@immutable
class BoxModel {
  final String boxId;
  final String boxSeries;
  final int boxNumber;
  final int boxCode;
  final String boxDescription;
  final String boxCoordinates;
  final String boxCreatedDate;
  final String boxModifiedDate;
  final String boxPhotoPath;
  final List<BoxThing> boxThings;

  const BoxModel({
    required this.boxId,
    required this.boxSeries,
    required this.boxNumber,
    required this.boxCode,
    required this.boxDescription,
    required this.boxCoordinates,
    required this.boxCreatedDate,
    required this.boxModifiedDate,
    required this.boxPhotoPath,
    required this.boxThings,
  });

  BoxModel copyWith({
    String? boxId,
    String? boxSeries,
    int? boxNumber,
    int? boxCode,
    String? boxDescription,
    String? boxCoordinates,
    String? boxCreatedDate,
    String? boxModifiedDate,
    String? boxPhotoPath,
    List<BoxThing>? boxThings,
  }) {
    return BoxModel(
      boxId: boxId ?? this.boxId,
      boxSeries: boxSeries ?? this.boxSeries,
      boxNumber: boxNumber ?? this.boxNumber,
      boxCode: boxCode ?? this.boxCode,
      boxDescription: boxDescription ?? this.boxDescription,
      boxCoordinates: boxCoordinates ?? this.boxCoordinates,
      boxCreatedDate: boxCreatedDate ?? this.boxCreatedDate,
      boxModifiedDate: boxModifiedDate ?? this.boxModifiedDate,
      boxPhotoPath: boxPhotoPath ?? this.boxPhotoPath,
      boxThings: boxThings ?? this.boxThings,
    );
  }
}
