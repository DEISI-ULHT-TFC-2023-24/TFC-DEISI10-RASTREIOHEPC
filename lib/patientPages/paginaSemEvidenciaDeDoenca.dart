import 'package:flutter/material.dart';
import 'package:tfc_flutter/patientPages/patientPages.dart';


class PaginaSemEvidenciaDeDoenca extends StatelessWidget {
  const PaginaSemEvidenciaDeDoenca({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            patientPages[0]['title'] as String, // Cast the value to String
            style: TextStyle(fontSize: 30),
          ), // Display the title with a larger font size
        ],
      ),
    );
  }
}
