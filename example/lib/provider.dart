import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';
import 'package:provider/provider.dart';

/// [ChangeNotifier] that wraps the [Wallet] generation inside a method
/// that notify when the we are generating or not.
class WalletWithMnemonicsModel extends ChangeNotifier {
  final StatefulCommercioAccount commercioAccount;
  bool isGenerating;
  WalletWithMnemonic walletWithMnemonic;

  WalletWithMnemonicsModel({
    @required this.commercioAccount,
    this.isGenerating = false,
  });

  /// Derive a new [Wallet], stores it and notify when the generation
  /// process is on through [isGenerating].
  Future<WalletWithMnemonic> deriveNewWallet() async {
    isGenerating = true;
    notifyListeners();

    walletWithMnemonic = await commercioAccount.generateNewWallet();

    isGenerating = false;
    notifyListeners();

    return walletWithMnemonic;
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
      title: 'Example app',
      home: ChangeNotifierProvider(
        create: (_) => WalletWithMnemonicsModel(
          commercioAccount: StatefulCommercioAccount(storage: SecretStorage()),
        ),
        child: const ExamplePage(),
      ),
    );
  }
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key key}) : super(key: key);

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
            Consumer<WalletWithMnemonicsModel>(
              builder: (context, value, child) {
                final fn =
                    value.isGenerating ? null : () => value.deriveNewWallet();
                final text = value.isGenerating
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
            Consumer<WalletWithMnemonicsModel>(
              builder: (context, value, child) {
                if (value.isGenerating) {
                  mnemonicTextController.text = 'Generating...';
                } else {
                  mnemonicTextController.text = value.walletWithMnemonic != null
                      ? value.walletWithMnemonic.mnemonic
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
            Consumer<WalletWithMnemonicsModel>(
              builder: (context, value, child) {
                if (value.isGenerating) {
                  walletTextController.text = 'Generating...';
                } else {
                  walletTextController.text =
                      value.commercioAccount.hasWalletAddress
                          ? value.commercioAccount.walletAddress
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
