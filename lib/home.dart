import 'package:campo_minado/controller.dart';
import 'package:campo_minado/widgets.dart';
import 'package:campo_minado/campoMinado.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Controller controller = new Controller();

  @override
  void initState() {  
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Campo Minado"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(
            builder: (_) =>
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  w_botao_nivel(
                    nome: "Fácil",
                    function: () => controller.definiNivel(nivel: 'Fácil'),
                    valor: controller.nivel
                  ),
                  w_botao_nivel(
                    nome: "Médio",
                    function: () => controller.definiNivel(nivel: 'Médio'),
                    valor: controller.nivel
                  ),
                  w_botao_nivel(
                    nome: "Difícil",
                    function: () =>  controller.definiNivel(nivel: 'Difícil'),
                    valor: controller.nivel
                  ),
                ],
              ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CampoMinado(
              controller: controller
            )),),
            icon: const Icon(Icons.gamepad_outlined),
            label: const Text('Iniciar Game'),
          ),
        ],
      ),
    );
  }
}
