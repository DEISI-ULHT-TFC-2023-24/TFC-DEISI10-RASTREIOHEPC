import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfc_flutter/patientPages/patientPages.dart';

import '../model/session.dart';

class PatientPagesBottomBar extends StatefulWidget {
  PatientPagesBottomBar({Key? key}) : super(key: key);

  @override
  State<PatientPagesBottomBar> createState() => _PatientPagesBottomBarState();
}

class _PatientPagesBottomBarState extends State<PatientPagesBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final session = context.watch<Session>();

    return Scaffold(
      appBar: AppBar(
        title: Text(patientPages[_selectedIndex].title),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.person),
            itemBuilder: (context) => [
              PopupMenuItem(value: 0, child: Text('Sair'))
            ],
            onSelected: (index) => session.user = null,
          )
        ],
      ),
      body: patientPages[_selectedIndex].widget,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) =>
            setState(() => _selectedIndex = index),
        destinations: patientPages
            .map((page) => NavigationDestination(
          icon: Icon(page.icon),
          label: page.title,
        ))
            .toList(),
      ),
    );
  }
}
