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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Provide the CommercioAccountBloc, still required
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
            disabledTextColor: Colors.brown,
            color: Colors.orangeAccent,
            child: () => const Text('Generate new wallet'),
            loadingChild: () => const Text('Generating...'),
          ),

          const Text('Mnemonic words:'),

          // We can still use the BLoC components to intercept the states
          // and provide custom logic
          BlocBuilder<CommercioAccountBloc, CommercioAccountState>(
              builder: (_, state) {
            textCtrl.text = '';

            if (state is CommercioAccountLoadingGenerateWallet) {
              textCtrl.text = 'Generating...';
            }

            if (state is CommercioAccountGeneratedWithWallet) {
              textCtrl.text = state.commercioAccount.mnemonic;
            }

            return TextField(
              controller: textCtrl,
              readOnly: true,
              style: TextStyle(
                  color: (state is CommercioAccountLoadingGenerateWallet)
                      ? Colors.grey
                      : Colors.black),
            );
          }),

          const Text('Wallet address:'),

          // Custom TextField that receives a wallet-generation state
          // that the user can intercept in the callback
          GenerateWalletCommercioAccountTextField(
            readOnly: true,
            loadingTextCallback: () => 'Generating...',
            textCallback: (state) => state.commercioAccount.walletAddress,
          ),
        ],
      ),
    );
  }
}
