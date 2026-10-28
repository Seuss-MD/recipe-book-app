// =============================================================================
// Project:     Legacy Recipe
//
// File:        memory.dart
// Description: Brief description
//
// Author:      Samuel Evans
// Created:     2026-10-26
// =============================================================================

import 'package:legacy_recipe/models/photo.dart';

// =============================================================================
// Name:  Class Name
// Description: Brief description
// =============================================================================
class Memory {
  String title = '';
  String desc = ''  ;
  DateTime? date;
  Photo photo = Photo();

  Memory([String title = '', String desc = '']) 
        : this.title = title,
        this.desc = desc;

  String getTitle() => title;
  String getDesc() => desc;
  DateTime? getDate() => date;
  Photo getPhoto() => photo;

  void setTitle(String t) => title = t;
  void setDesc(String d) => desc = d;
  void setDate(DateTime? d) => date = d;
  void setEmptyPhoto() => photo = Photo();
  void setPhotoFromFile(String f)
  {
    photo = Photo.fromFile(f);
    photo.setTitle(title);
    photo.setDesc(desc);
  }
  

}
