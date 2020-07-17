import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:sacco/sacco.dart';

part 'mobx.g.dart';

class WalletWithMnemonics = WalletWithMnemonicsBase with _$WalletWithMnemonics;

/// [Store] that wraps the [Wallet] generation inside a method
/// and exposes an observable value to rebuild UI when generating or not.
abstract class WalletWithMnemonicsBase with Store {
  @observable
  bool isGenerating;

  final StatefulCommercioAccount commercioAccount;

  WalletWithMnemonicsBase({
    @required this.commercioAccount,
    this.isGenerating = false,
  });

  /// Derive a new [Wallet], stores it and notify when the generation
  /// process is on through [isGenerating].
  @action
  Future<Wallet> deriveNewWallet() async {
    isGenerating = true;

    final wallet = await commercioAccount.generateNewWallet();

    isGenerating = false;

    return wallet;
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      home: ExamplePage(
        walletWithMnemonics: WalletWithMnemonics(
          commercioAccount: StatefulCommercioAccount(),
        ),
      ),
    );
  }
}

class ExamplePage extends StatefulWidget {
  final WalletWithMnemonics walletWithMnemonics;

  const ExamplePage({
    Key key,
    @required this.walletWithMnemonics,
  }) : super(key: key);

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final TextEditingController walletTextController = TextEditingController();
  final TextEditingController mnemonicTextController = TextEditingController();

  @override
  void dispose() {
    mnemonicTextController.dispose();
    walletTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Observer(
              builder: (_) {
                final fn = widget.walletWithMnemonics.isGenerating
                    ? null
                    : () => widget.walletWithMnemonics.deriveNewWallet();
                final text = widget.walletWithMnemonics.isGenerating
                    ? 'Generating...'
                    : 'Generate new wallet';

                return FlatButton(
                  onPressed: fn,
                  textColor: Colors.brown,
                  color: Colors.orange,
                  disabledColor: Colors.orange[700],
                  child: Text(text),
                );
              },
            ),
            const Text('Mnemonic words:'),
            Observer(
              builder: (_) {
                if (widget.walletWithMnemonics.isGenerating) {
                  mnemonicTextController.text = 'Generating...';
                } else {
                  mnemonicTextController.text =
                      widget.walletWithMnemonics.commercioAccount.hasMnemonic
                          ? widget.walletWithMnemonics.commercioAccount.mnemonic
                          : '';
                }

                return TextField(
                  controller: mnemonicTextController,
                  readOnly: true,
                  maxLines: null,
                );
              },
            ),
            const Text('Wallet address:'),
            Observer(
              builder: (_) {
                if (widget.walletWithMnemonics.isGenerating) {
                  walletTextController.text = 'Generating...';
                } else {
                  walletTextController.text = widget
                          .walletWithMnemonics.commercioAccount.hasWalletAddress
                      ? widget
                          .walletWithMnemonics.commercioAccount.walletAddress
                      : '';
                }

                return TextField(
                  controller: walletTextController,
                  readOnly: true,
                  maxLines: null,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
