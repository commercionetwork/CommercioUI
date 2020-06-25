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
  runApp(
    RepositoryProvider<StatefulCommercioAccount>(
      create: (_) => StatefulCommercioAccount(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Provide the needed Commercio BLoC
    return BlocProvider<CommercioAccountGenerateWalletBloc>(
      create: (context) => CommercioAccountGenerateWalletBloc(
        commercioAccount:
            RepositoryProvider.of<StatefulCommercioAccount>(context),
      ),
      child: MaterialApp(
        title: 'Example App',
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
    final generateWalletBloc =
        BlocProvider.of<CommercioAccountGenerateWalletBloc>(context);
    String flatButtonText = 'Generate new wallet';
    Function() onPressed = () => generateWalletBloc.add(
          const CommercioAccountGenerateWalletEvent(),
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        // Use the provided Commercio BLoC to generate a new wallet
        child: BlocBuilder<CommercioAccountGenerateWalletBloc,
            CommercioAccountGenerateWalletState>(
          builder: (_, state) {
            state.when(
              // Wallet and mnemonic have been generated and saved
              (mnemonic, wallet, walletAddress) {
                mnemonicTextController.text = mnemonic;
                walletTextController.text = walletAddress;
              },
              // Initial state, all fields empty
              initial: () {
                mnemonicTextController.text = '';
                walletTextController.text = '';
              },
              // Loading state, disable text and buttons
              loading: () {
                walletTextController.text = 'Generating...';
                mnemonicTextController.text = 'Generating...';
                flatButtonText = 'Generating...';
                onPressed = null;
              },
              error: (e) {
                walletTextController.text = 'Error $e';
                mnemonicTextController.text = 'Error $e';
              },
            );

            return Column(
              children: [
                FlatButton(
                  // Send a new wallet generation event
                  onPressed: onPressed,
                  disabledTextColor: Colors.brown,
                  color: Colors.orangeAccent,
                  child: Text(flatButtonText),
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
          },
        ),
      ),
    );
  }
}
