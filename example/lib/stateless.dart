import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

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
    final mnemonic = await StatelessCommercioAccount().generateMnemonic();

    // Derive a wallet using the generated mnemonic words and the given
    // network info
    final wallet = await StatelessCommercioAccount().generateNewWallet(
      networkInfo: networkInfo,
      mnemonic: mnemonic,
    );

    // Save the generated mnemonic words inside the device secure storage
    // We skip the error handling code
    await StatelessCommercioAccount().storeMnemonic(
      secretStorage: SecretStorage(),
      secureStorageKey: 'my-mnemonic-key',
      mnemonic: mnemonic,
    );

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
            var fn = () => setState(() => isGenerating = true);
            var text = 'Generate new wallet';

            if (snap.connectionState == ConnectionState.waiting) {
              walletTextController.text = 'Generating...';
              mnemonicTextController.text = 'Generating...';
              text = 'Generating...';
              fn = null;
            }

            return Column(
              children: [
                FlatButton(
                  onPressed: fn,
                  textColor: Colors.brown,
                  color: Colors.orange,
                  disabledColor: Colors.orange[700],
                  child: Text(text),
                ),
                const Text('Mnemonic words:'),
                TextField(
                  controller: mnemonicTextController,
                  readOnly: true,
                  maxLines: null,
                ),
                const Text('Wallet address:'),
                TextField(
                  controller: walletTextController,
                  readOnly: true,
                  maxLines: null,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
