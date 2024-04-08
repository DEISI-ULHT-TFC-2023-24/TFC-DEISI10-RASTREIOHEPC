import 'package:flutter/material.dart';
import 'package:tfc_flutter/model/patient.dart';

class PatientDetailPage extends StatelessWidget {
  final Patient patient;

  const PatientDetailPage({required this.patient});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Detail'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildDetailItem('Name', patient.getName()),
          _buildDetailItem('ID', patient.getId()),
          _buildDetailItem('CC', patient.getCC()),
          _buildDetailItem('Gender', patient.getBirthdate().toString()),
          _buildDetailItem('Age', patient.getAge().toString()),
          _buildDetailItem('Real ID', patient.getRealId()?.toString() ?? 'N/A'),
          _buildDetailItem('Document Type', patient.getDocumentType()?.toString() ?? 'N/A'),
          _buildDetailItem('Last Program Name', patient.getLastProgramName() ?? 'N/A'),
          _buildDetailItem('Last Program Date', patient.getLastProgramDate()?.toString() ?? 'N/A'),
          _buildDetailItem('User ID', patient.getUserId().toString()),
        ].expand((widget) => [widget, SizedBox(height: 8), Divider(), SizedBox(height: 8)]).toList(), // Add SizedBox for spacing
      ),
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0), // Adjust vertical padding
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          value,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
