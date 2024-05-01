import 'package:app_prestamos/presentation/screens/shared/options.dart';
import 'package:flutter/material.dart';

  final List<Options> listOptionsPrestamos = <Options>[
    Options(
      title: 'Prestamos Activos', 
      subtitle: 'Prestamos que estan dentro de la fecha acordada', 
      icon: Icons.credit_card_outlined
    ),
    Options(
      title: 'Prestamos Vencidos', 
      subtitle: 'Prestamos que NO estan dentro de la fecha acordada', 
      icon: Icons.credit_card_off_rounded
    )
];