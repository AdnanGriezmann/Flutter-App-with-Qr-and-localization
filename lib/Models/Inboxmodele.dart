//import 'package:freezed_annotation/freezed_annotation.dart';

// @freezed
// class Inbox with _$Inbox {
//   factory Inbox({
//     String? title,
//     String? subtitle,
//     String? tag,
//     String? img,
//     DateTime? dateTime,
//   }) = _Inbox;
// }

import 'dart:core';

class Inbox {
  String? title;
  String? subtitle;
  String? tag;
  String? img;
  DateTime? dateTime;

  Inbox({this.title, this.subtitle, this.tag, this.img, this.dateTime});
}
