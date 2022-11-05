import 'package:campo_minado/Widgets.dart';
import 'package:flutter/animation.dart';

class Campo {
  late int linha;
  late int coluna;
  late bool bomba;
  late bool status;
  late String nome;
  late Color color;


 getCampo(){
    return w_campo(
      color: this.color,
      nome: this.nome,
    );
  }

}