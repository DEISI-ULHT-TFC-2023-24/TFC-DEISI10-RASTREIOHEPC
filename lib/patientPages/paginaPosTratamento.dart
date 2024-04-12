import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfc_flutter/pages/pages.dart';
import 'package:tfc_flutter/repository/zeus_repository.dart';

class PaginaPosTratamento extends StatelessWidget{
  const PaginaPosTratamento({super.key});


  @override
  Widget build(BuildContext context){

    var zeusRepository = context.read<ZeusRepository>();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Fase Pós-Tratamento',
                prefixIcon: Icon(Icons.health_and_safety), // Add search icon
              ),
            ),
          ),


          Icon(pages[1].icon, size: 100,),
          Text(pages[1].title, style: TextStyle(fontSize: 30)), //todo por dentro de else
        ],
      ),
    );
  }
}