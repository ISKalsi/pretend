// Mocks generated by Mockito 5.0.15 from annotations
// in pretend/test/application/bloc/home/home_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:core/error.dart' as _i5;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:pretend/domain/usecases/generate_schedule_for_today.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [GenerateScheduleForToday].
///
/// See the documentation for Mockito's code generation for more information.
class MockGenerateScheduleForToday extends _i1.Mock
    implements _i3.GenerateScheduleForToday {
  MockGenerateScheduleForToday() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i3.GenerateScheduleForTodayOutput>> call(
          _i3.GenerateScheduleForTodayParams? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
          returnValue:
              Future<_i2.Either<_i5.Failure, _i3.GenerateScheduleForTodayOutput>>.value(
                  _FakeEither_0<_i5.Failure,
                      _i3.GenerateScheduleForTodayOutput>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i3.GenerateScheduleForTodayOutput>>);
  @override
  String toString() => super.toString();
}
