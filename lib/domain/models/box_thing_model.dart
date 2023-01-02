import 'package:flutter/cupertino.dart';

@immutable
class BoxThing {
  final String thingId;
  final String thingName;
  final String thingCode;
  final String thingDescription;
  final String thingAddedDate;

  const BoxThing({
    required this.thingId,
    required this.thingName,
    required this.thingCode,
    required this.thingDescription,
    required this.thingAddedDate,
  });

  BoxThing copyWith({
    String? thingId,
    String? thingName,
    String? thingCode,
    String? thingDescription,
    String? thingAddedDate,
  }) {
    return BoxThing(
      thingId: thingId ?? this.thingId,
      thingName: thingName ?? this.thingName,
      thingCode: thingCode ?? this.thingCode,
      thingDescription: thingDescription ?? this.thingDescription,
      thingAddedDate: thingAddedDate ?? this.thingAddedDate,
    );
  }
}
