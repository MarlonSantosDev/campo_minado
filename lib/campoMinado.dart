import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CampoMinado extends StatelessWidget {
  final controller;
  CampoMinado({this.controller});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("😃"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.replay_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              controller.startGame();
            },
          )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: Container(
          padding: EdgeInsets.zero,
          color: Colors.white,
          //width: MediaQuery.of(context).size.width,
          child: Observer(
            builder: (_) =>
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Campos sem bombas: ${controller.campos_sem_bombas}"),
                      Text("Campos explorado: ${controller.campos_descoberto}"),
                      Text("Campos com bombas: ${controller.campos_com_bombas}"),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  for (var linha in controller.matriz)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var coluna in linha)
                          coluna.getCampo
                      ],
                    ),
                ],
              ),
          ),
        ),
      ),
    );
  }
}