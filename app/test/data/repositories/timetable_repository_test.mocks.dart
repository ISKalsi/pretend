// Mocks generated by Mockito 5.0.17 from annotations
// in pretend/test/data/repositories/timetable_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:pretend/data/data_sources/timetable_local_datasource.dart'
    as _i3;
import 'package:pretend/data/models/timetable_model.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeTimetableModel_0 extends _i1.Fake implements _i2.TimetableModel {}

/// A class which mocks [TimetableLocalDataSourceContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockTimetableLocalDataSourceContract extends _i1.Mock
    implements _i3.TimetableLocalDataSourceContract {
  MockTimetableLocalDataSourceContract() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.TimetableModel> getTimetable() =>
      (super.noSuchMethod(Invocation.method(#getTimetable, []),
              returnValue:
                  Future<_i2.TimetableModel>.value(_FakeTimetableModel_0()))
          as _i4.Future<_i2.TimetableModel>);
  @override
  _i4.Future<void> setTimetable(_i2.TimetableModel? timetable) =>
      (super.noSuchMethod(Invocation.method(#setTimetable, [timetable]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
}
