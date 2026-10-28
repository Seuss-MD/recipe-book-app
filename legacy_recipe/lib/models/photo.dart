// =============================================================================
// Project:     Legacy Recipe
//
// File:        photo.dart
// Description: Brief description
//
// Author:      Samuel Evans
// Created:     2026-10-26
// =============================================================================


// =============================================================================
// Name:  Photo
// Description: Brief description
// =============================================================================
class Photo {
  String title = '';
  String desc = '';
  String file = '';

  Photo([String title = '', String desc = '', String file = '']) 
        : this.title = title,
        this.desc = desc,
        this.file = file;

  Photo.fromFile(String file):
    this.file = file,
    this.title = '',
    this.desc = '';

  String getTitle() => title;
  String getDesc() => desc;
  String getFile() => file;

  void setTitle(String t) => title = t;
  void setDesc(String d) => desc = d;
  void setFile(String f) => file = f;
}