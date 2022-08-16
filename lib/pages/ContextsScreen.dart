// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tdc/util/Carta.dart';
import 'package:tdc/util/ListWidget.dart';

class ContextsScreen extends StatefulWidget {
  const ContextsScreen({Key? key}) : super(key: key);

  @override
  State<ContextsScreen> createState() => _ContextsScreenState();
}

class _ContextsScreenState extends State<ContextsScreen> {
  //puxar e criar aqui as cartas, não no List.
  List<Carta> carta = [
    Carta(
        assignedText: 'OLá',
        path:
            'http://s2.glbimg.com/h3Duok3KWVA8yaIOzZZIESkNLC4DKPsVVGWWhNMHhpNIoz-HdGixxa_8qOZvMp3w/e.glbimg.com/og/ed/f/original/2013/08/02/imagem_para_sexta_51.jpg'),
    Carta(
        assignedText: 'assignedText',
        path:
            'http://cbissn.ibict.br/images/phocagallery/galeria2/thumbs/phoca_thumb_l_image03_grd.png'),
    Carta(
        assignedText: 'assignedText',
        path:
            'http://cbissn.ibict.br/images/phocagallery/galeria2/thumbs/phoca_thumb_l_image03_grd.png'),
    Carta(
        assignedText: 'assignedText',
        path:
            'http://cbissn.ibict.br/images/phocagallery/galeria2/thumbs/phoca_thumb_l_image03_grd.png'),
    Carta(
        assignedText: 'assignedText',
        path:
            'http://cbissn.ibict.br/images/phocagallery/galeria2/thumbs/phoca_thumb_l_image03_grd.png'),
    Carta(
        assignedText: 'assignedText',
        path:
            'http://cbissn.ibict.br/images/phocagallery/galeria2/thumbs/phoca_thumb_l_image03_grd.png'),
    Carta(
        assignedText: 'assignedText',
        path:
            'http://cbissn.ibict.br/images/phocagallery/galeria2/thumbs/phoca_thumb_l_image03_grd.png'),
    Carta(
        assignedText: 'assignedText',
        path:
            'http://cbissn.ibict.br/images/phocagallery/galeria2/thumbs/phoca_thumb_l_image03_grd.png'),
    Carta(
        assignedText: 'assignedText',
        path:
            'http://cbissn.ibict.br/images/phocagallery/galeria2/thumbs/phoca_thumb_l_image03_grd.png')
  ];

  @override

  //criar um ListView.builder com ListWidgets.
  //os listwidgets também serão instanciados neste arquivo.

  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListWidget(
          carta: carta,
        ),
        ListWidget(
          carta: carta,
        ),
        ListWidget(
          carta: carta,
        ),
      ],
    );
  }
}
