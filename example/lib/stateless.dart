import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sacco/sacco.dart';

// The Stateless layer is just a convenient Flutter wrapper around
// commercio-sdk. The aim is to simplify the API and give more methods
// to store and retrieve mnemonic and RSA keys from the device
// secure storage.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Example app',
      home: ExamplePage(),
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

  // Create some local network info
  final NetworkInfo networkInfo = NetworkInfo(
    bech32Hrp: 'did:com:',
    lcdUrl: 'http://localhost:1317',
  );

  // We need to manage the state during mnemonic creation and wallet derivation
  bool isGenerating = false;

  // Generate a new wallet using the stateless layer
  Future<Wallet> _deriveNewWallet() async {
    // Generate a string of 24 space-separed mnemonic words
    final mnemonic = await StatelessCommercioAccount.generateMnemonic();

    // Derive a wallet using the generated mnemonic words and the given
    // network info
    final wallet = await StatelessCommercioAccount.generateNewWallet(
      networkInfo: networkInfo,
      mnemonic: mnemonic,
    );

    // Save the generated mnemonic words inside the device secure storage
    // We skip the error handling code
    await StatelessCommercioAccount.storeMnemonic(
        secretStorage: SecretStorage(),
        secureStorageKey: 'commercio-mnemonic',
        mnemonic: mnemonic);

    setState(() {
      walletTextController.text = wallet.bech32Address;
      mnemonicTextController.text = mnemonic;
      isGenerating = false;
    });

    return wallet;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: FutureBuilder<Wallet>(
            future: isGenerating ? _deriveNewWallet() : null,
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                walletTextController.text = 'Generating...';
                mnemonicTextController.text = 'Generating...';

                return Column(
                  children: [
                    const FlatButton(
                      onPressed: null,
                      disabledTextColor: Colors.brown,
                      disabledColor: Colors.orangeAccent,
                      child: Text(
                        'Generating...',
                      ),
                    ),
                    const Text('Mnemonic words:'),
                    TextField(
                      controller: mnemonicTextController,
                      readOnly: true,
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Text('Wallet address:'),
                    TextField(
                      controller: walletTextController,
                      readOnly: true,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                );
              }

              return Column(
                children: [
                  FlatButton(
                      onPressed: () => setState(() => isGenerating = true),
                      textColor: Colors.brown,
                      color: Colors.orange,
                      child: const Text('Generate new wallet')),
                  const Text('Mnemonic words:'),
                  TextField(
                    controller: mnemonicTextController,
                    readOnly: true,
                  ),
                  const Text('Wallet address:'),
                  TextField(
                    controller: walletTextController,
                    readOnly: true,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
