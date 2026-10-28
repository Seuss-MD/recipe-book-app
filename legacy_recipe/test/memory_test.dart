import 'package:flutter_test/flutter_test.dart';
import 'package:legacy_recipe/models/memory.dart';

/// *******************************************
/// TEST MEMORY
/// Unit tests for Memory
///*******************************************
class TestMemory {

  void run() {
    group('Memory', () {
      test('constructor_default', constructor_default);
      test('getTitle', getTitle);
      test('getDesc', getDesc);
      test('getDate', getDate);
      test('setTitle', setTitle);
      test('setDesc', setDesc);
      test('setDate', setDate);
    });
  }

  /// *******************************************
  /// name:    DEFAULT CONSTRUCTOR
  /// input:   nothing
  /// output:  empty title and desc
  ///*******************************************
  void constructor_default() {
    // setup
    // exercise
    final m = Memory();

    // verify
    expect(m.title, '');
    expect(m.desc, '');
    // teardown
  }

  /// *******************************************
  /// name:    GET TITLE
  /// input:   title "First Christmas"
  /// output:  "First Christmas"
  ///*******************************************
  void getTitle() {
    // setup
    final m = Memory();
    m.title = 'First Christmas';
    String title = 'junk';

    // exercise
    title = m.getTitle();

    // verify
    expect(title, 'First Christmas');
    expect(m.title, 'First Christmas');
    // teardown
  }

  /// *******************************************
  /// name:    GET DESC
  /// input:   desc "Made it with Dad"
  /// output:  "Made it with Dad"
  ///*******************************************
  void getDesc() {
    // setup
    final m = Memory();
    m.desc = 'Made it with Dad';
    String desc = 'junk';

    // exercise
    desc = m.getDesc();

    // verify
    expect(desc, 'Made it with Dad');
    expect(m.desc, 'Made it with Dad');
    // teardown
  }

  /// *******************************************
  /// name:    GET DATE
  /// input:   date "2025-12-25"
  /// output:  DateTime(2025, 12, 25)
  ///*******************************************
  void getDate() {
    // setup
    final m = Memory();
    m.date = DateTime(2025, 12, 25);
    DateTime? date = DateTime(1900);

    // exercise
    date = m.getDate();

    // verify
    expect(date, DateTime(2025, 12, 25));
    expect(m.date, DateTime(2025, 12, 25));
    // teardown
  }

  /// *******************************************
  /// name:    SET TITLE
  /// input:   (title "old") -> "new"
  /// output:  title "new", desc untouched
  ///*******************************************
  void setTitle() {
    // setup
    final m = Memory();
    m.title = 'old';
    m.desc = 'd';

    // exercise
    m.setTitle('new');

    // verify
    expect(m.title, 'new');
    expect(m.desc, 'd');
    // teardown
  }

  /// *******************************************
  /// name:    SET DESC
  /// input:   (desc "old") -> "new"
  /// output:  desc "new", title untouched
  ///*******************************************
  void setDesc() {
    // setup
    final m = Memory();
    m.title = 't';
    m.desc = 'old';

    // exercise
    m.setDesc('new');

    // verify
    expect(m.title, 't');
    expect(m.desc, 'new');
    // teardown
  }

  /// *******************************************
  /// name:    SET DATE
  /// input:   (2000-01-01) -> "2026-10-26"
  /// output:  DateTime(2026, 10, 26)
  ///*******************************************
  void setDate() {
    // setup
    final m = Memory();
    m.date = DateTime(2000, 1, 1);

    // exercise
    m.setDate(DateTime(2026, 10, 26));

    // verify
    expect(m.date, DateTime(2026, 10, 26));
    // teardown
  }
}

void main() {
  TestMemory().run();
}
