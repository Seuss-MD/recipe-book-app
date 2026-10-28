import 'package:flutter_test/flutter_test.dart';
import 'package:legacy_recipe/models/photo.dart';

/// *******************************************
/// TEST PHOTO
/// Unit tests for Photo
///*******************************************
class TestPhoto {
  void run() {
    group('Photo', () {
      test('constructor_default', constructor_default);
      test('getTitle', getTitle);
      test('getDesc', getDesc);
      test('getFile', getFile);
      test('setTitle', setTitle);
      test('setDesc', setDesc);
      test('setFile', setFile);
    });
  }

  /// *******************************************
  /// name:    DEFAULT CONSTRUCTOR
  /// input:   nothing
  /// output:  empty title, desc, file
  ///*******************************************
  void constructor_default() {
    // setup
    // exercise
    final p = Photo();

    // verify
    expect(p.title, '');
    expect(p.desc, '');
    expect(p.file, '');
    // teardown
  }

  /// *******************************************
  /// name:    GET TITLE
  /// input:   title "Grandma's pie"
  /// output:  "Grandma's pie"
  ///*******************************************
  void getTitle() {
    // setup
    final p = Photo();
    p.title = "Grandma's pie";
    String title = 'junk';

    // exercise
    title = p.getTitle();

    // verify
    expect(title, "Grandma's pie");
    expect(p.title, "Grandma's pie");
    // teardown
  }

  /// *******************************************
  /// name:    GET DESC
  /// input:   desc "Thanksgiving 2025"
  /// output:  "Thanksgiving 2025"
  ///*******************************************
  void getDesc() {
    // setup
    final p = Photo();
    p.desc = 'Thanksgiving 2025';
    String desc = 'junk';

    // exercise
    desc = p.getDesc();

    // verify
    expect(desc, 'Thanksgiving 2025');
    expect(p.desc, 'Thanksgiving 2025');
    // teardown
  }

  /// *******************************************
  /// name:    GET FILE
  /// input:   file "photos/pie.jpg"
  /// output:  "photos/pie.jpg"
  ///*******************************************
  void getFile() {
    // setup
    final p = Photo();
    p.file = 'photos/pie.jpg';
    String file = 'junk';

    // exercise
    file = p.getFile();

    // verify
    expect(file, 'photos/pie.jpg');
    expect(p.file, 'photos/pie.jpg');
    // teardown
  }

  /// *******************************************
  /// name:    SET TITLE
  /// input:   (title "old") -> "new"
  /// output:  title "new", desc and file untouched
  ///*******************************************
  void setTitle() {
    // setup
    final p = Photo();
    p.title = 'old';
    p.desc = 'd';
    p.file = 'f';

    // exercise
    p.setTitle('new');

    // verify
    expect(p.title, 'new');
    expect(p.desc, 'd');
    expect(p.file, 'f');
    // teardown
  }

  /// *******************************************
  /// name:    SET DESC
  /// input:   (desc "old") -> "new"
  /// output:  desc "new", title and file untouched
  ///*******************************************
  void setDesc() {
    // setup
    final p = Photo();
    p.title = 't';
    p.desc = 'old';
    p.file = 'f';

    // exercise
    p.setDesc('new');

    // verify
    expect(p.title, 't');
    expect(p.desc, 'new');
    expect(p.file, 'f');
    // teardown
  }

  /// *******************************************
  /// name:    SET FILE
  /// input:   (file "old.jpg") -> "new.jpg"
  /// output:  file "new.jpg", title and desc untouched
  ///*******************************************
  void setFile() {
    // setup
    final p = Photo();
    p.title = 't';
    p.desc = 'd';
    p.file = 'old.jpg';

    // exercise
    p.setFile('new.jpg');

    // verify
    expect(p.title, 't');
    expect(p.desc, 'd');
    expect(p.file, 'new.jpg');
    // teardown
  }
}

void main() {
  TestPhoto().run();
}
