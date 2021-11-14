import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:core/error.dart';
import 'package:core/usecase.dart';
import 'package:pretend/domain/entities/timetable.dart';
import 'package:pretend/domain/repositories/timetable_repository_contract.dart';

class SetTimetable extends UseCase<void, SetTimetableParams> {
  final TimetableRepositoryContract repository;

  SetTimetable(this.repository);

  @override
  Future<Either<Failure, void>> call(SetTimetableParams params) async {
    return await repository.setTimetable(params.timetable);
  }
}

class SetTimetableParams extends Equatable {
  final Timetable timetable;

  const SetTimetableParams(this.timetable);

  @override
  List<Object?> get props => [timetable];
}