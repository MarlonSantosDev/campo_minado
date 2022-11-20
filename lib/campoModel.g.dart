// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campoModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CampoModel on CampoModelBase, Store {
  Computed<Widget>? _$getCampoComputed;

  @override
  Widget get getCampo =>
      (_$getCampoComputed ??= Computed<Widget>(() => super.getCampo,
              name: 'CampoModelBase.getCampo'))
          .value;

  late final _$bombaAtom = Atom(name: 'CampoModelBase.bomba', context: context);

  @override
  bool get bomba {
    _$bombaAtom.reportRead();
    return super.bomba;
  }

  @override
  set bomba(bool value) {
    _$bombaAtom.reportWrite(value, super.bomba, () {
      super.bomba = value;
    });
  }

  late final _$visivelAtom =
      Atom(name: 'CampoModelBase.visivel', context: context);

  @override
  bool get visivel {
    _$visivelAtom.reportRead();
    return super.visivel;
  }

  @override
  set visivel(bool value) {
    _$visivelAtom.reportWrite(value, super.visivel, () {
      super.visivel = value;
    });
  }

  late final _$CampoModelBaseActionController =
      ActionController(name: 'CampoModelBase', context: context);

  @override
  dynamic setVisivel() {
    final _$actionInfo = _$CampoModelBaseActionController.startAction(
        name: 'CampoModelBase.setVisivel');
    try {
      return super.setVisivel();
    } finally {
      _$CampoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCampoSemBombaProximos() {
    final _$actionInfo = _$CampoModelBaseActionController.startAction(
        name: 'CampoModelBase.setCampoSemBombaProximos');
    try {
      return super.setCampoSemBombaProximos();
    } finally {
      _$CampoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNivelDePerigo() {
    final _$actionInfo = _$CampoModelBaseActionController.startAction(
        name: 'CampoModelBase.setNivelDePerigo');
    try {
      return super.setNivelDePerigo();
    } finally {
      _$CampoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bomba: ${bomba},
visivel: ${visivel},
getCampo: ${getCampo}
    ''';
  }
}
