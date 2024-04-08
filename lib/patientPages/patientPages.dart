import 'package:flutter/material.dart';
import 'package:tfc_flutter/patientPages/paginaPosTratamento.dart';
import 'package:tfc_flutter/patientPages/paginaSemEvidenciaDeDoenca.dart';
import 'package:tfc_flutter/patientPages/paginaTesteDIagnosticoPositivo.dart';
import 'package:tfc_flutter/patientPages/paginaTratamento.dart';

final patientPages = [
  {
    'title': 'Sem Evidência de Doença',
    'icon': Icons.check_circle,
    'widget': PaginaSemEvidenciaDeDoenca(),
  },
  {
    'title': 'Em Tratamento',
    'icon': Icons.plus_one,
    'widget': PaginaTratamento(),
  },
  {
    'title': 'Pós-Análise de Tratamento',
    'icon': Icons.circle,
    'widget': PaginaPosTratamento(),
  },
  {
    'title': 'Teste De Diagnóstico Positivo',
    'icon': Icons.mark_as_unread,
    'widget': PaginaTesteDiagnosticoPositivo(),
  },
];
