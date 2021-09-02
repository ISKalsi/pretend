import 'package:flutter_test/flutter_test.dart';
import 'package:pretend/features/timetable/data/models/subject_model.dart';
import 'package:pretend/features/timetable/domain/entities/subject.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tSubjectModel = SubjectModel(
    name: "Computer Networks",
    code: "IT-502",
  );

  test('should be a subclass of Subject entity', () {
    expect(tSubjectModel, isA<Subject>());
  });

  test(
    'should return a valid SubjectModel',
    () async {
      final Map<String, dynamic> jsonMap = fixture("subject.json");
      final result = SubjectModel.fromJson(jsonMap);
      expect(result, tSubjectModel);
    },
  );

  test(
    'should return a valid List of SubjectModels',
    () async {
      final List<dynamic> jsonList = fixture("subjects.json");
      final result = SubjectModel.listFromJson(jsonList);

      final expectedSubjects = [
        SubjectModel(
          name: "Computer Networks",
          code: "IT-502",
        ),
        SubjectModel(
          name: "International Trade",
          code: "HU-351a",
        ),
      ];
      expect(result, expectedSubjects);
    },
  );

  test(
    'should return a JSON map containing proper data',
    () async {
      final result = tSubjectModel.toJson();
      final expectedJsonMap = {
        SubjectModelFields.NAME: "Computer Networks",
        SubjectModelFields.CODE: "IT-502"
      };
      expect(result, expectedJsonMap);
    },
  );

  test(
    'should return a valid JSON map of SubjectModels',
    () async {
      final expectedJsonMap = {
        "dsfFSFS3": SubjectModel(name: "International Trade", code: "HU-351a"),
        "fdsdfEv": SubjectModel(name: "Computer Networks", code: "IT-502"),
        "FHVBVsf356": SubjectModel(name: "Theory of Computing", code: "IT-504")
      };

      final jsonMap = fixture("timetable_subjects.json");
      final result = SubjectModel.mapFromJson(jsonMap);

      expect(result, expectedJsonMap);
    },
  );
}
