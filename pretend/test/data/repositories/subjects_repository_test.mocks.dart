// Mocks generated by Mockito 5.0.15 from annotations
// in pretend/test/data/repositories/subjects_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:core/src/network/network_info.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:pretend/data/data_sources/subjects_local_datasource.dart'
    as _i2;
import 'package:pretend/data/data_sources/subjects_remote_datasource.dart'
    as _i5;
import 'package:pretend/data/models/subject_model.dart' as _i4;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [SubjectsLocalDataSourceContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockSubjectsLocalDataSourceContract extends _i1.Mock
    implements _i2.SubjectsLocalDataSourceContract {
  MockSubjectsLocalDataSourceContract() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.SubjectModel>> getAllSubjects() =>
      (super.noSuchMethod(Invocation.method(#getAllSubjects, []),
              returnValue:
                  Future<List<_i4.SubjectModel>>.value(<_i4.SubjectModel>[]))
          as _i3.Future<List<_i4.SubjectModel>>);
  @override
  _i3.Future<Map<String, _i4.SubjectModel>> getSubjects(List<String>? keys) =>
      (super.noSuchMethod(Invocation.method(#getSubjects, [keys]),
              returnValue: Future<Map<String, _i4.SubjectModel>>.value(
                  <String, _i4.SubjectModel>{}))
          as _i3.Future<Map<String, _i4.SubjectModel>>);
  @override
  _i3.Future<void> clearSubjects() =>
      (super.noSuchMethod(Invocation.method(#clearSubjects, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> addSubjects(List<_i4.SubjectModel>? subjects) =>
      (super.noSuchMethod(Invocation.method(#addSubjects, [subjects]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> addSubject(_i4.SubjectModel? subject) =>
      (super.noSuchMethod(Invocation.method(#addSubject, [subject]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [SubjectsRemoteDataSourceContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockSubjectsRemoteDataSourceContract extends _i1.Mock
    implements _i5.SubjectsRemoteDataSourceContract {
  MockSubjectsRemoteDataSourceContract() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.SubjectModel>> getSubjects() =>
      (super.noSuchMethod(Invocation.method(#getSubjects, []),
              returnValue:
                  Future<List<_i4.SubjectModel>>.value(<_i4.SubjectModel>[]))
          as _i3.Future<List<_i4.SubjectModel>>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i6.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  String toString() => super.toString();
}
