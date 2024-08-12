import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones in en flutter',
      icon: Icons.smart_button_outlined,
      link: '/buttons'),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Contenedor estilizado',
      icon: Icons.credit_card,
      link: '/cards'),
  MenuItem(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      icon: Icons.refresh_rounded,
      link: '/progress'),
  MenuItem(
      title: 'Snackbars y dialogo',
      subTitle: 'Generales y controlados',
      icon: Icons.info_outline,
      link: '/snackbars'),
];
