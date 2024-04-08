import 'package:flutter/material.dart';

class PatientDetailPage extends StatelessWidget {
  final String patientId;

  const PatientDetailPage({required this.patientId});

  @override
  Widget build(BuildContext context) {
    return Material( // Ensure that PatientDetailPage has a Material ancestor
      child: Scaffold(
        appBar: AppBar(
          title: Text('Patient Detail'),
        ),
        body: Center(
          child: Text('Patient ID: $patientId'),
        ),
      ),
    );
  }
}