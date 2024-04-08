import 'package:flutter/material.dart';
import 'package:tfc_flutter/patientPages/patientPages.dart';
import '../model/patient.dart';

class MainPatientPage extends StatefulWidget {
  final Patient patient; // Add a patient parameter

  MainPatientPage({Key? key, required this.patient}) : super(key: key);

  @override
  State<MainPatientPage> createState() => _MainPatientPageState();
}

class _MainPatientPageState extends State<MainPatientPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.patient.getName() + ', ${widget.patient.getAge()}'),
            // Display patient's name
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: patientPages.map((patientPage) {
          if (patientPage['title'] == 'Main Patient Page') {
            // Return MainPatientPage widget with the provided patient
            return MainPatientPage(
                patient: widget
                    .patient); // Pass the patient object to each MainPatientPage instance
          } else {
            return patientPage['widget']
                as Widget; // Access the 'widget' key of each page map
          }
        }).toList(),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) =>
            setState(() => _selectedIndex = index),
        destinations: patientPages
            .map((page) => NavigationDestination(
                  icon: Icon(page['icon'] as IconData),
                  label: page['title'] as String,
                ))
            .toList(),
      ),
    );
  }
}
