import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:core/error.dart';
import 'package:core/extensions.dart';
import 'package:core/usecase.dart';
import 'package:pretend/domain/entities/days.dart';
import 'package:pretend/domain/entities/filters.dart';
import 'package:pretend/domain/entities/subject.dart';
import 'package:pretend/domain/entities/timeslot.dart';
import 'package:pretend/domain/entities/timeslots.dart';
import 'package:pretend/domain/entities/timetable.dart';
import 'package:pretend/domain/repositories/subjects_repository_contract.dart';
import 'package:pretend/domain/repositories/timetable_repository_contract.dart';

typedef FilteredSchedule = Map<Filters, Map<Timeslots, Timeslot>>;

class GenerateScheduleForToday extends UseCase<GenerateScheduleForTodayOutput,
    GenerateScheduleForTodayParams> {
  final TimetableRepositoryContract _timetableRepo;
  final SubjectsRepositoryContract _subjectsRepo;

  GenerateScheduleForToday(this._timetableRepo, this._subjectsRepo);

  @override
  Future<Either<Failure, GenerateScheduleForTodayOutput>> call(
      GenerateScheduleForTodayParams params) async {
    final timetableEither = await _timetableRepo.getTimetable();
    return timetableEither.fold((failure) => Left(failure), (timetable) async {
      final subjectsEither =
          await _getSubjectsOfTimetable(timetable.subjectCodes);
      return subjectsEither.fold((failure) => Left(failure), (subjects) {
        try {
          final day = Days.values[params.now.weekday - 1];
          final scheduleForToday = _getScheduleForToday(timetable, day);
          final filteredSchedule = _filterSchedule(scheduleForToday, params.now);
          return Right(GenerateScheduleForTodayOutput(
            timetable,
            subjects,
            filteredSchedule,
          ));
        } catch (e) {
          return Left(GenerateScheduleFailure(e.toString()));
        }
      });
    });
  }

  Map<Timeslots, Timeslot> _getScheduleForToday(
      Timetable timetable, String weekday) {
    final scheduleForToday = timetable.timetable[weekday]?.map((key, value) {
      final timeslot = getTimeslotFromDashed(key);
      return MapEntry(timeslot, value);
    });
    return scheduleForToday ?? {};
  }

  Future<Either<Failure, Map<String, Subject>>> _getSubjectsOfTimetable(
      List<String> subjectCodes) async {
    return await _subjectsRepo.getSubjectsFromKeys(subjectCodes);
  }

  FilteredSchedule _filterSchedule(
      Map<Timeslots, Timeslot> scheduleForToday, DateTime now) {
    final FilteredSchedule filteredSchedule = {};
    for (final division in Filters.values) {
      filteredSchedule[division] = {};
    }
    scheduleForToday.forEach((slot, info) {
      late Filters filter;
      if (now.isTimeBefore(slot.endTime)) {
        if (now.isTimeAfter(slot.startTime)) {
          filter = Filters.onGoing;
        } else {
          filter = Filters.laterToday;
        }
      } else {
        filter = Filters.passed;
      }
      filteredSchedule[filter]![slot] = info;
    });
    return filteredSchedule;
  }
}

class GenerateScheduleForTodayParams extends Equatable {
  final DateTime now;

  const GenerateScheduleForTodayParams(this.now);

  @override
  List<Object?> get props => [now];
}

class GenerateScheduleForTodayOutput extends Equatable {
  final Timetable timetable;
  final Map<String, Subject> subjects;
  final Map<Filters, Map<Timeslots, Timeslot>> filteredSchedule;

  const GenerateScheduleForTodayOutput(
    this.timetable,
    this.subjects,
    this.filteredSchedule,
  );

  @override
  List<Object?> get props => [timetable, subjects, filteredSchedule];
}
