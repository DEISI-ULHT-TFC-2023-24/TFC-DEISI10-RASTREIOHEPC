import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfc_flutter/repository/appatite_repository.dart';
import 'package:tfc_flutter/patientPages/mainPatientPage.dart';

class TratamentosParaHoje extends StatefulWidget {
  const TratamentosParaHoje({Key? key});

  @override
  _TratamentosParaHojeState createState() => _TratamentosParaHojeState();
}

class _TratamentosParaHojeState extends State<TratamentosParaHoje> {
  @override
  Widget build(BuildContext context) {
    var appatiteRepository = context.read<AppatiteRepository>();

    return Scaffold(
      body: FutureBuilder(
        future: appatiteRepository.fetchPatientsDaily(),
        builder: (_, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(child: CircularProgressIndicator());
          } else {
            var patients = snapshot.data!;

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (_, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPatientPage(patient: patients[index]), // Pass the Patient object
                            ),
                          );
                        },

                        child: Row(
                          children: [
                            Icon(Icons.person),
                            SizedBox(width: 8), // Add spacing between icon and text
                            Text(patients[index].getName()), // Use getter
                          ],
                        ),
                      ),
                      separatorBuilder: (_, index) => Divider(color: Colors.red, thickness: 1),
                      itemCount: patients.length,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
