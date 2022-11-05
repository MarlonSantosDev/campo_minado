import 'package:campo_minado/campo.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'dart:math';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {

  ControllerBase(){
    criarCampos();
  }

  int tamanho = 10;
  late int dificuldade;
  
  @observable
  String nivel = "";

  @observable
  ObservableList<ObservableList<Campo>> matriz = new ObservableList<ObservableList<Campo>>.of([]);

  @action
  criarCampos(){
    for (var i = 0; i <= 10; i++) {
      ObservableList<Campo> list = new ObservableList<Campo>.of([]);
      
      for (var j = 0; j <= 10; j++) {
        Campo campo = new Campo();

        campo.linha = i;
        campo.coluna = j;
        campo.color = (i+j)%2!=0 ? Colors.green[300]! : Colors.green[200]!;
        campo.bomba = false;
        campo.nome = "$i:$j";
        
        list.add(campo);
      }
      matriz.add(list);
    }
  }

  @action
  definiNivel({required String nivel}){
    switch(nivel){
      case 'Fácil': 
        dificuldade = 2;
        this.nivel = 'Fácil';
      break;

      case 'Médio':
        dificuldade = 4;
        this.nivel = 'Médio';
      break;

      case 'Difícil':
        dificuldade = 6;
        this.nivel = 'Difícil';
      break;
    }
    criarBombas();
  }

  @action
  criarBombas(){
    Set<int> linha = {};
    Set<int> colunas = {};
    late int posicao;
    Random random = new Random();

    for (var i = 0; i < dificuldade; i++) {
      do {
        for (var j = 0; j < (tamanho * 2 ); j++) {
          posicao = random.nextInt(tamanho);
          linha.add(posicao);
          posicao = random.nextInt(tamanho);
          colunas.add(posicao);
        }
      } while ( linha.length != colunas.length);

      print("Linha:   $linha");
      print("Colunas: $colunas");
      print("------------------");
      for (var k = 0; k < linha.length; k++) {
        print("matriz[${linha.elementAt(k)}][${colunas.elementAt(k)}]");
        matriz[linha.elementAt(k)][colunas.elementAt(k)].color = Colors.redAccent;
        //matriz = matriz;
      }
      

      linha = {};
      colunas = {};
    }
    
  }

}