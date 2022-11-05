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
          width: MediaQuery.of(context).size.width,
          child: Observer(
            builder: (_) =>
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  for (var linha in controller.matriz)
                    Row(
                      children: [
                        for (var coluna in linha)
                          coluna.getCampo()
                        ],
                      )
                ],
              ),
          ),
        ),
      ),
    );
  }
}