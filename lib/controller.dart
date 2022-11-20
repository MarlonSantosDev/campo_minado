import 'package:campo_minado/campoModel.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'dart:math';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {

  int tamanho = 10;
  late int dificuldade;
  
  @observable
  String nivel = "";
  
  @computed
  int get campos_sem_bombas => (tamanho * tamanho) - campos_com_bombas;

  @computed
  int get campos_descoberto {
    int campos_descoberto = 0;
    for (var i = 0; i < tamanho; i++) {
      for (var j = 0; j < tamanho; j++) {
        if ( matriz[i][j].visivel == true )
          campos_descoberto++;
      }
    }
    return campos_descoberto;
  }
  

  @observable
  late int campos_com_bombas;

  @observable
  ObservableList<ObservableList<CampoModel>> matriz = new ObservableList<ObservableList<CampoModel>>.of([]);

  @action
  startGame() {
    matriz = new ObservableList<ObservableList<CampoModel>>.of([]);
    criarCampos();
    criarBombas();
  }

  @action
  criarCampos(){
    int x = 0;
    for (var i = 0; i < tamanho; i++) {
      ObservableList<CampoModel> list = new ObservableList<CampoModel>.of([]);
      
      for (var j = 0; j < tamanho; j++) {
        CampoModel campo = new CampoModel();

        campo.linha = i;
        campo.coluna = j;
        campo.color = (i+j)%2!=0 ? Colors.green[300]! : Colors.green[200]!;
        campo.nome = "$x"; //"$i:$j";
        x++;
        
        list.add(campo);
      }
      matriz.add(list);
    }
  }

  @action
  definiNivel({required String nivel}){
    switch(nivel){
      case 'Fácil': 
        dificuldade = 4;
        this.nivel = 'Fácil';
      break;

      case 'Médio':
        dificuldade = 5;
        this.nivel = 'Médio';
      break;

      case 'Difícil':
        dificuldade = 8;
        this.nivel = 'Difícil';
      break;
    }
  }

  @action
  criarBombas(){
    Set<int> linha = {};
    Set<int> colunas = {};
    late int posicao;
    Random random = new Random();

    for (var i = 0; i < dificuldade; i++) {
      do {
        for (var j = 0; j <= tamanho; j++) {
          posicao = random.nextInt(tamanho-1);
          linha.add(posicao);
          posicao = random.nextInt(tamanho-1);
          colunas.add(posicao);
        }
      } while ( linha.length != colunas.length);

      // print("Linha:   $linha");
      // print("Colunas: $colunas");
      // print("------------------");
      for (var k = 0; k < linha.length; k++) {
        matriz[linha.elementAt(k)][colunas.elementAt(k)].bomba = true;
        //matriz[linha.elementAt(k)][colunas.elementAt(k)].visivel = true;
      }
      linha = {};
      colunas = {};
    }

    campos_com_bombas = 0;
    for (var i = 0; i < tamanho; i++) {
      for (var j = 0; j < tamanho; j++) {
        if ( matriz[i][j].bomba == true )
          campos_com_bombas++;
      }
    }
    
  }

}