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
      required this.icon
  });
}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),

 MenuItem(
    title: 'Snackbar y dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline
  ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Statefull widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded
  ),
  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Serie de controles de flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
  ),
    MenuItem(
    title: 'Introduccion a la app',
    subTitle: 'Pequeño tutorial introductorio de la app',
    link: '/tutorial',
    icon: Icons.accessible_rounded
  ),
    MenuItem(
    title: 'InfiniteScroll and Pull to Refresh',
    subTitle: 'Listas infinitas y hale para actualizar',
    link: '/infinite',
    icon: Icons.list_alt_rounded
  ),
];
