// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on ControllerBase, Store {
  Computed<int>? _$campos_sem_bombasComputed;

  @override
  int get campos_sem_bombas => (_$campos_sem_bombasComputed ??= Computed<int>(
          () => super.campos_sem_bombas,
          name: 'ControllerBase.campos_sem_bombas'))
      .value;
  Computed<int>? _$campos_descobertoComputed;

  @override
  int get campos_descoberto => (_$campos_descobertoComputed ??= Computed<int>(
          () => super.campos_descoberto,
          name: 'ControllerBase.campos_descoberto'))
      .value;

  late final _$nivelAtom = Atom(name: 'ControllerBase.nivel', context: context);

  @override
  String get nivel {
    _$nivelAtom.reportRead();
    return super.nivel;
  }

  @override
  set nivel(String value) {
    _$nivelAtom.reportWrite(value, super.nivel, () {
      super.nivel = value;
    });
  }

  late final _$campos_com_bombasAtom =
      Atom(name: 'ControllerBase.campos_com_bombas', context: context);

  @override
  int get campos_com_bombas {
    _$campos_com_bombasAtom.reportRead();
    return super.campos_com_bombas;
  }

  @override
  set campos_com_bombas(int value) {
    _$campos_com_bombasAtom.reportWrite(value, super.campos_com_bombas, () {
      super.campos_com_bombas = value;
    });
  }

  late final _$matrizAtom =
      Atom(name: 'ControllerBase.matriz', context: context);

  @override
  ObservableList<ObservableList<CampoModel>> get matriz {
    _$matrizAtom.reportRead();
    return super.matriz;
  }

  @override
  set matriz(ObservableList<ObservableList<CampoModel>> value) {
    _$matrizAtom.reportWrite(value, super.matriz, () {
      super.matriz = value;
    });
  }

  late final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase', context: context);

  @override
  dynamic startGame() {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.startGame');
    try {
      return super.startGame();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic criarCampos() {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.criarCampos');
    try {
      return super.criarCampos();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic definiNivel({required String nivel}) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.definiNivel');
    try {
      return super.definiNivel(nivel: nivel);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic criarBombas() {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.criarBombas');
    try {
      return super.criarBombas();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nivel: ${nivel},
campos_com_bombas: ${campos_com_bombas},
matriz: ${matriz},
campos_sem_bombas: ${campos_sem_bombas},
campos_descoberto: ${campos_descoberto}
    ''';
  }
}
