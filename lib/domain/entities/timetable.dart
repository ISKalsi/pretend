import 'package:equatable/equatable.dart';
import 'package:pretend/domain/entities/timeslot.dart';

typedef TimetableMap = Map<String, Map<String, Timeslot>>;

class Timetable extends Equatable {
  final TimetableMap timetable;
  final List<String> subjectKeys;

  Timetable(this.timetable, this.subjectKeys);

  @override
  List<Object?> get props => [timetable];
}