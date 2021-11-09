// Mocks generated by Mockito 5.0.15 from annotations
// in pretend/test/domain/usecases/generate_schedule_for_today_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:pretend/core/error/failures.dart' as _i5;
import 'package:pretend/core/network/data_source_enum.dart' as _i7;
import 'package:pretend/domain/entities/subject.dart' as _i6;
import 'package:pretend/domain/entities/timetable.dart' as _i9;
import 'package:pretend/domain/repositories/subjects_repository_contract.dart'
    as _i3;
import 'package:pretend/domain/repositories/timetable_repository_contract.dart'
    as _i8;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [SubjectsRepositoryContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockSubjectsRepositoryContract extends _i1.Mock
    implements _i3.SubjectsRepositoryContract {
  MockSubjectsRepositoryContract() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.Subject>>> getSubjects(
          _i7.DataSource? dataSource) =>
      (super.noSuchMethod(Invocation.method(#getSubjects, [dataSource]),
          returnValue: Future<_i2.Either<_i5.Failure, List<_i6.Subject>>>.value(
              _FakeEither_0<_i5.Failure, List<_i6.Subject>>())) as _i4
          .Future<_i2.Either<_i5.Failure, List<_i6.Subject>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, Map<String, _i6.Subject>>>
      getSubjectsFromKeys(List<String>? keys) => (super.noSuchMethod(
              Invocation.method(#getSubjectsFromKeys, [keys]),
              returnValue: Future<
                      _i2.Either<_i5.Failure, Map<String, _i6.Subject>>>.value(
                  _FakeEither_0<_i5.Failure, Map<String, _i6.Subject>>()))
          as _i4.Future<_i2.Either<_i5.Failure, Map<String, _i6.Subject>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, void>> addSubject(_i6.Subject? subject) =>
      (super.noSuchMethod(Invocation.method(#addSubject, [subject]),
              returnValue: Future<_i2.Either<_i5.Failure, void>>.value(
                  _FakeEither_0<_i5.Failure, void>()))
          as _i4.Future<_i2.Either<_i5.Failure, void>>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [TimetableRepositoryContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockTimetableRepositoryContract extends _i1.Mock
    implements _i8.TimetableRepositoryContract {
  MockTimetableRepositoryContract() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i9.Timetable>> getTimetable() =>
      (super.noSuchMethod(Invocation.method(#getTimetable, []),
              returnValue: Future<_i2.Either<_i5.Failure, _i9.Timetable>>.value(
                  _FakeEither_0<_i5.Failure, _i9.Timetable>()))
          as _i4.Future<_i2.Either<_i5.Failure, _i9.Timetable>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, void>> setTimetable(
          _i9.Timetable? timetable) =>
      (super.noSuchMethod(Invocation.method(#setTimetable, [timetable]),
              returnValue: Future<_i2.Either<_i5.Failure, void>>.value(
                  _FakeEither_0<_i5.Failure, void>()))
          as _i4.Future<_i2.Either<_i5.Failure, void>>);
  @override
  String toString() => super.toString();
}
