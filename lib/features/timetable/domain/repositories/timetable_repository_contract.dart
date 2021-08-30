import 'package:dartz/dartz.dart';
import 'package:pretend/core/error/failures.dart';
import 'package:pretend/features/timetable/domain/entities/time_set.dart';

abstract class TimetableRepositoryContract {
  Future<Either<Failure, Timetable>> getTimetable();
  Future<Either<Failure, void>> setTimetable(Timetable timetable);
}