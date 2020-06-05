import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// The UI BLoC layer provides already built blocs, events and states
// that can be used in every application. The opinionated choice to use
// BLoC instead other architectural patterns was made to keep the library
// and its functions as separated as possible.
//
// Just add the only blocs that you need, they will take care of:
// - Provide logic, states and events
// - Store state in-memory and via secure storage (the Stateful layer is used)
// - No need to use setState() and basic state management
// - Relay on stateless widgets instead of stateful ones

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Provide the needed Commercio BLoC
    return BlocProvider<CommercioAccountBloc>(
      create: (_) =>
          CommercioAccountBloc(commercioAccount: StatefulCommercioAccount()),
      child: MaterialApp(
        title: 'Example app',
        home: ExamplePage(),
      ),
    );
  }
}

// Differently from the Core layer we don't need to manage the state so
// we can use a StatelessWidget
class ExamplePage extends StatelessWidget {
  ExamplePage({Key key}) : super(key: key);

  final TextEditingController walletTextController = TextEditingController();
  final TextEditingController mnemonicTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final commercioAccountBloc = BlocProvider.of<CommercioAccountBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        // Use the provided Commercio BLoC to generate a new wallet
        child: BlocBuilder<CommercioAccountBloc, CommercioAccountState>(
            builder: (_, state) {
          // Initial state, all fields empty
          if (state is CommercioAccountInitial) {
            mnemonicTextController.text = '';
            walletTextController.text = '';
          }

          // Loading state, disable text and buttons
          if (state is CommercioAccountLoadingGenerateWallet) {
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

          // Wallet and mnemonic have been generated and saved
          if (state is CommercioAccountGeneratedWithWallet) {
            mnemonicTextController.text = state.commercioAccount.mnemonic;
            walletTextController.text = state.commercioAccount.walletAddress;
          }

          return Column(
            children: [
              FlatButton(
                // Send a new wallet generation event
                onPressed: () => commercioAccountBloc
                    .add(const CommercioAccountGenerateNewWalletEvent()),
                disabledTextColor: Colors.brown,
                color: Colors.orangeAccent,
                child: const Text('Generate new wallet'),
              ),
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
