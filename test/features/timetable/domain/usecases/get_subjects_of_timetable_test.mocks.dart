// Mocks generated by Mockito 5.0.15 from annotations
// in pretend/test/features/timetable/domain/usecases/get_subjects_of_timetable_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:pretend/core/error/failures.dart' as _i5;
import 'package:pretend/core/network/data_source_enum.dart' as _i7;
import 'package:pretend/features/timetable/domain/entities/subject.dart' as _i6;
import 'package:pretend/features/timetable/domain/repositories/subjects_repository_contract.dart'
    as _i3;

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
  String toString() => super.toString();
}
