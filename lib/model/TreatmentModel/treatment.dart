import 'package:tfc_flutter/model/TreatmentModel/dailyMedicine.dart';

class Treatment {
  final int _id;
  final DateTime? _startDate;
  final DateTime? _realEndDate;
  final DateTime? _postTreatmentStartDate;
  final String? _nameMedication;
  final String? _reasonsDropout;
  final String? _endTreatmentComment;
  final int? _treatmentDuration;
  final int _patientId;
  final List<DailyMedicine>? _dailyMedicine;

  Treatment({
    required int id,
    DateTime? startDate,
    DateTime? realEndDate,
    DateTime? postTreatmentStartDate,
    String? nameMedication,
    String? reasonsDropout,
    String? endTreatmentComment,
    int? treatmentDuration,
    required int patientId,
    List<DailyMedicine>? dailyMedicine,
  })  : _id = id,
        _startDate = startDate,
        _realEndDate = realEndDate,
        _postTreatmentStartDate = postTreatmentStartDate,
        _nameMedication = nameMedication,
        _reasonsDropout = reasonsDropout,
        _endTreatmentComment = endTreatmentComment,
        _treatmentDuration = treatmentDuration,
        _patientId = patientId,
        _dailyMedicine = dailyMedicine;


  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'startDate': _startDate?.toIso8601String(),
      'realEndDate': _realEndDate?.toIso8601String(),
      'postTreatmentStartDate': _postTreatmentStartDate?.toIso8601String(),
      'nameMedication': _nameMedication,
      'reasonsDropout': _reasonsDropout,
      'endTreatmentComment': _endTreatmentComment,
      'treatmentDuration': _treatmentDuration,
      'patientId': _patientId,
      'dailyMedicine': _dailyMedicine?.map((medicine) => medicine.toJson()).toList(),
    };
  }


  factory Treatment.fromJson(Map<String, dynamic> json) {
    try {
      return Treatment(
        id: json['id'] as int,
        startDate: json['startDate'] != null ? DateTime.parse(json['startDate'] as String) : null,
        realEndDate: json['realEndDate'] != null ? DateTime.parse(json['realEndDate'] as String) : null,
        postTreatmentStartDate: json['postTreatmentStartDate'] != null ? DateTime.parse(json['postTreatmentStartDate'] as String) : null,
        nameMedication: json['nameMedication'] as String?,
        reasonsDropout: json['reasonsDropout'] as String?,
        endTreatmentComment: json['endTreatmentComment'] as String?,
        treatmentDuration: json['treatmentDuration'] as int?,
        patientId: json['patientId'] as int,
        dailyMedicine: (json['dailyMedicine'] as List<dynamic>?)
            ?.map((medicine) => DailyMedicine.fromJson(medicine as Map<String, dynamic>))
            .toList(),
      );
    } catch (e) {
      print('Error in Treatment.fromJson: $e');
      rethrow;
    }
  }


  int get id => _id;
  DateTime? get startDate => _startDate;
  DateTime? get realEndDate => _realEndDate;
  DateTime? get postTreatmentStartDate => _postTreatmentStartDate;
  String? get nameMedication => _nameMedication;
  String? get reasonsDropout => _reasonsDropout;
  String? get endTreatmentComment => _endTreatmentComment;
  int? get treatmentDuration => _treatmentDuration;
  int get patientId => _patientId;
  List<DailyMedicine>? get dailyMedicine => _dailyMedicine;
}
