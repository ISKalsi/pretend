import 'package:dartz/dartz.dart';
import 'package:pretend/core/error/failures.dart';
import 'package:pretend/core/usecases/usecase.dart';
import 'package:pretend/domain/entities/timetable.dart';
import 'package:pretend/domain/repositories/timetable_repository_contract.dart';


class GetTimetable extends UseCase<Timetable, NoParams> {
  final TimetableRepositoryContract repository;

  GetTimetable(this.repository);

  @override
  Future<Either<Failure, Timetable>> call(NoParams params) async {
    return await repository.getTimetable();
  }
}