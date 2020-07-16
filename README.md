# CommercioUI

[![Build Status](https://travis-ci.com/commercionetwork/CommercioUI.svg?branch=master)](https://travis-ci.com/commercionetwork/CommercioUI)
![Coverage](https://img.shields.io/badge/coverage-97%25-success.svg)
[![Pub version](https://img.shields.io/badge/pub-0.2.0-orange.svg)](https://pub.dev/packages/commercio_ui)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)
[![bloc library](https://tinyurl.com/bloc-library)](https://pub.dev/packages/bloc)

CommercioUI reduces your overall  blockchain app development time by 90% because of its pre-build clean Core+UI widgets that you can use in any flutter app development. We have spent  one year to build this library to make to make your life easier.

![Commercio UI Infographic](./docs/images/commercio_ui_infographic.png)

## Core

### Stateless

The **Stateless** part is just a lightweight layer built on top of the [commercio-sdk](https://github.com/commercionetwork/commercio-sdk.dart). It's thought to give the maximum flexibility to the developer.

Example of usage when generating a new wallet:

```dart
final networkInfo = NetworkInfo(
  bech32Hrp: 'did:com:',
  lcdUrl: 'http://localhost:1317',
);

final wallet = await StatelessCommercioAccount.generateNewWallet(
  networkInfo: networkInfo,
);
```

### Stateful

**Stateful** is built using the *Stateless* layer and give a custom state management for commercio-related operations. The operations are the same of the *Stateless* layer but state, storage and caching are provided out-of-the-box.

For example, can used with a `Provider-ChangeNotifier/StateNotifier` implementation to build a custom app without have to manage the commercio-related state.

## UI

### BLoC

If the project already uses or will be created using the BLoC library then **CommercioUI** provides a large set of blocs, events and states already implemented that can be integrated easily in the project. 

### Widgets

The **Widgets** supports and wraps 3 of the following widgets:

* `FlatButton`
* `TextField`
* `Text`

The provided widgets directly use *BLoC* implementation to send, receive and handle events and states. With these widgets only the BLoC should be provided and then the interface can be built extremely fast.

## Comparison

To give an idea of the development speed that the library give you let's look at an example.

### Pure commercio-sdk version

This example Flutter app uses directly the commercio-sdk. The SDK is great to have the maximun flexibility with a lot of helper functions but a lot of boilerplate is needed to integrate it to a full Flutter application.

```dart
import 'package:bip39/bip39.dart' as bip39;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sacco/sacco.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
        ),
        body: const ExamplePage(),
      ),
    );
  }
}

// Must use a StatefulWidget to keep track of the state changes
class ExamplePage extends StatefulWidget {
  const ExamplePage({Key key}) : super(key: key);

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final TextEditingController walletTextController = TextEditingController();

  final NetworkInfo networkInfo = NetworkInfo(
    bech32Hrp: 'did:com:',
    lcdUrl: 'http://localhost:1317',
  );

  // We need to manager ourself the state
  bool isGenerating = false;

  Future<Wallet> _deriveNewWallet(BuildContext context) async {
    // Must know the BIP39 strength to generate 24 words
    final mnemonicString = bip39.generateMnemonic(strength: 256);
    final mnemonic = mnemonicString.split(' ');

    // This call is sync but the computation is expensive so the
    // call should be done in a separate thread (in Dart, Isolate)
    // Keep in mind that spawn a new thread every time is also expensive
    final computeData = _ComputeWalletData(mnemonic, networkInfo);
    final wallet = await compute(computeWallet, computeData);

    // Also this computation is expensive and should be done async
    // Keep in mind that a new thread is spaw so we should use a pool
    walletTextController.text = await compute(computeAddress, wallet);

    // Store the generated mnemonic
    const secureStorage = FlutterSecureStorage();

    // SecureStorage can raise an exception that we need to intercept
    try {
      await secureStorage.write(key: 'menmonic-key', value: mnemonicString);
    } catch (e) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
        backgroundColor: Colors.redAccent,
      ));
    }

    setState(() {
      isGenerating = false;
    });

    return wallet;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<Wallet>(
          future: isGenerating ? _deriveNewWallet(context) : null,
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              walletTextController.text = 'Generating...';

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
                    onPressed: () => setState(() {
                          isGenerating = true;
                        }),
                    textColor: Colors.brown,
                    color: Colors.orange,
                    child: const Text('Generate new wallet')),
                const Text('Wallet address:'),
                TextField(
                  controller: walletTextController,
                  readOnly: true,
                ),
              ],
            );
          }),
    );
  }
}

// Private class only to send data to computeWallet
class _ComputeWalletData {
  final List<String> mnemonic;
  final NetworkInfo networkInfo;
  final String lastDerivationPathSegment;

  const _ComputeWalletData(
    this.mnemonic,
    this.networkInfo, {
    this.lastDerivationPathSegment,
  });
}

// Global function only to derive the wallet in a separate thread
Wallet computeWallet(_ComputeWalletData data) {
  // Must check if the optional argument is null to call the right version
  // and do not override the argument
  if (data.lastDerivationPathSegment == null) {
    return Wallet.derive(data.mnemonic, data.networkInfo);
  }

  return Wallet.derive(data.mnemonic, data.networkInfo,
      lastDerivationPathSegment: data.lastDerivationPathSegment);
}

// Another global function only to keep things async
String computeAddress(Wallet wallet) {
  return wallet.bech32Address;
}
```

### CommercioUI version

The *CommercioUI* libraries are designed to keep all the commercio-sdk functions but eliminate the majority of the boilerplate.

```dart
import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
        ),
        // When providing the BLoC (on which the UI layer is built)
        // the Commercio Account can be customized
        body: BlocProvider(
          create: (_) => CommercioAccountGenerateWalletBloc(
            commercioAccount: StatefulCommercioAccount(),
          ),
          child: const ExamplePage(),
        ),
      ),
    );
  }
}

// Stateless widget, no more state to manage ourself
class ExamplePage extends StatelessWidget {
  const ExamplePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custom FlatButton that generate new mnemonic words and derive
        // the wallet.
        // The loading is automatic, all the information is stored inside the
        // CommercioAccount and the mnemonic are stored inside the secure
        // storage.
        //
        // Errors are handled automatically but the callback can be customized
        GenerateWalletFlatButton(
          event: () => const CommercioAccountGenerateWalletEvent(),
          disabledTextColor: Colors.brown,
          color: Colors.orangeAccent,
          child: (_) => const Text('Generate new wallet'),
        ),
        const Text('Wallet address:'),
        // Custom TextField that received the state with the wallet generated.
        // The callback provide all the flexibility to chose how to elaborate
        // the result.
        //
        // No problem on calling for the address, it's cached.
        GenerateWalletTextField(
          text: (_, data) => data.walletAddress,
          loading: (_) => 'Generating...',
        ),
      ],
    );
  }
}
```
