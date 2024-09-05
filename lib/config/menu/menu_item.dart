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
  MenuItem(
      title: 'Animated contianer',
      subTitle: 'Stateful widget animado',
      icon: Icons.check_box_outline_blank_rounded,
      link: '/animated'),
  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'Flutter Controls',
      icon: Icons.car_rental_outlined,
      link: '/ui-controls'),
  MenuItem(
      title: 'Tutorial',
      subTitle: 'App Tutorial',
      icon: Icons.tv_outlined,
      link: '/tutorial'),
  MenuItem(
      title: 'Infinite Scroll Y Pull',
      subTitle: 'Infinite scroll',
      icon: Icons.list_alt_rounded,
      link: '/infinite'),
  MenuItem(
      title: 'Counter screen',
      subTitle: 'A counter feature',
      icon: Icons.calculate_outlined,
      link: '/counter_screen'),
  MenuItem(
      title: 'Theme changer',
      subTitle: 'A theme changer feature',
      icon: Icons.color_lens_outlined,
      link: '/theme_changer'),
];
