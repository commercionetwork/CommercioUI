import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// The UI widgets layer is the topmost layer in the CommercioUI library.
// The layer provides a set of pre-built widgets around the BLoC components
// to build applications at maximun speed.
//
// The supported widgets automatically send events and elaborate the response
// states.
// - Custom widgets that eliminate BLoC boilerplate
// - Default error handling

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
    // Provide the CommercioAccountBloc, still required
    return BlocProvider<CommercioAccountGenerateWalletBloc>(
      create: (_) => CommercioAccountGenerateWalletBloc(
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

class ExamplePage extends StatelessWidget {
  ExamplePage({Key key}) : super(key: key);

  final TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Column(
        children: [
          // Custom FlatButton that when is pressed sends an event
          // to generate new mnemonic and derive the wallet
          GenerateWalletFlatButton(
            accountEventCallback: () =>
                const CommercioAccountGenerateWalletEvent(),
            disabledTextColor: Colors.brown,
            color: Colors.orangeAccent,
            child: () => const Text('Generate new wallet'),
            loadingChild: () => const Text('Generating...'),
          ),

          const Text('Mnemonic words:'),

          // We can still use the BLoC components to intercept the states
          // and provide custom logic
          BlocBuilder<CommercioAccountGenerateWalletBloc,
              CommercioAccountGenerateWalletState>(
            builder: (_, state) {
              state.when(
                (mnemonic, wallet, walletAddress) => textCtrl.text = mnemonic,
                initial: () => textCtrl.text = '',
                loading: () => textCtrl.text = 'Generating...',
                error: (e) => textCtrl.text = 'Error: $e',
              );

              return TextField(
                controller: textCtrl,
                readOnly: true,
                style: TextStyle(
                    color: (state is CommercioAccountGenerateWalletLoading)
                        ? Colors.grey
                        : Colors.black),
              );
            },
          ),

          const Text('Wallet address:'),

          // Custom TextField that receives a wallet-generation state
          // that the user can intercept in the callback
          GenerateWalletTextField(
            readOnly: true,
            loadingTextCallback: () => 'Generating...',
            textCallback: (state) => state.walletAddress,
          ),
        ],
      ),
    );
  }
}
