import 'package:campo_minado/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'campoModel.g.dart';

class CampoModel = CampoModelBase with _$CampoModel;

abstract class CampoModelBase with Store {

  late int linha;
  late int coluna;

  @observable
  bool bomba = false;

  @observable
  bool visivel = false;

  late String nome;
  late Color color;

  @computed
  Widget get getCampo {
    // Campo Normal oculto
    if ( visivel == false )
      return w_campo(
        color: this.color,
        campoModel: this,
      );
    
    // Mostra campo
    if ( visivel )
      if ( bomba )
        return w_campo(
          color: Colors.redAccent,
          campoModel: this,
        );
      return w_campo(
          color: Colors.brown[300]!,
          campoModel: this,
        );
  }

  @action
  setVisivel(){
    visivel = true;
  }

  @action
  setCampoSemBombaProximos(){
    
  }

  @action
  setNivelDePerigo(){
  }

}