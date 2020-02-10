// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loguin_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoguinController on _LoguinBase, Store {
  final _$loandingAtom = Atom(name: '_LoguinBase.loanding');

  @override
  bool get loanding {
    _$loandingAtom.context.enforceReadPolicy(_$loandingAtom);
    _$loandingAtom.reportObserved();
    return super.loanding;
  }

  @override
  set loanding(bool value) {
    _$loandingAtom.context.conditionallyRunInAction(() {
      super.loanding = value;
      _$loandingAtom.reportChanged();
    }, _$loandingAtom, name: '${_$loandingAtom.name}_set');
  }

  final _$loginWithGooleAsyncAction = AsyncAction('loginWithGoole');

  @override
  Future<dynamic> loginWithGoole() {
    return _$loginWithGooleAsyncAction.run(() => super.loginWithGoole());
  }
}
