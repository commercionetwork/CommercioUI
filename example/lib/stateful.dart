import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sacco/sacco.dart';

// The Stateful layer is built directly on the Stateless layer.
// Using this layer we have:
// - Commercio objects with state
// - Wallet caching
// - Default storing/fetching from secure storage

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

  // Create a commercio account with default NetworkInfo, secret storage and
  // storage key
  final StatefulCommercioAccount commercioAccount = StatefulCommercioAccount();

  // We need to manage the state during mnemonic creation and wallet derivation
  bool isGenerating = false;

  // Generate a new wallet using the stateful layer
  Future<Wallet> _deriveNewWallet() async {
    // Derive a new wallet using auto-generated mnemonic words
    // The resulting words are automatically stored inside the secure storage
    await commercioAccount.generateNewWallet();

    setState(() {
      // Cached wallet address to greatly improve perfomance
      walletTextController.text = commercioAccount.walletAddress;

      // The mnemonic generated are stored inside the object state
      mnemonicTextController.text = commercioAccount.mnemonic;

      isGenerating = false;
    });

    return commercioAccount.wallet;
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
