// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WalletWithMnemonics on WalletWithMnemonicsBase, Store {
  final _$isGeneratingAtom = Atom(name: 'WalletWithMnemonicsBase.isGenerating');

  @override
  bool get isGenerating {
    _$isGeneratingAtom.reportRead();
    return super.isGenerating;
  }

  @override
  set isGenerating(bool value) {
    _$isGeneratingAtom.reportWrite(value, super.isGenerating, () {
      super.isGenerating = value;
    });
  }

  final _$deriveNewWalletAsyncAction =
      AsyncAction('WalletWithMnemonicsBase.deriveNewWallet');

  @override
  Future<Wallet> deriveNewWallet() {
    return _$deriveNewWalletAsyncAction.run(() => super.deriveNewWallet());
  }

  @override
  String toString() {
    return '''
isGenerating: ${isGenerating}
    ''';
  }
}
