import 'package:campo_minado/campoModel.dart';
import 'package:flutter/material.dart';

w_botao_nivel({required String nome, required String valor, required Function function}) =>
  Row(
    children: [
      Radio(
        value: nome, 
        groupValue: valor,
        onChanged: (value){
          function();
        },
      ),
      Text(nome),
      SizedBox(
        width: 8
      ),
    ],
  );

w_campo ({required Color color, required CampoModelBase campoModel, String? nome = ""}) =>
  InkWell(
    onTap: campoModel.visivel == true ? null : () => campoModel.setVisivel(),
    child: Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(1.0),
      width: 50,
      height: 50,
      color: color,
      child: Text("$nome",
        style: TextStyle(
          color: Colors.lightBlue,
          fontSize: 18,
          fontWeight: FontWeight.w600
        ),
      ),
    ),
  );
