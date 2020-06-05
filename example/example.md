# Examples

The library is built on 4 layers so the examples are stored in their subfolder:

* **Core**
  + [Stateless](core/stateless/example.dart)
  + [Stateful](core/stateful/example.dart)
* **UI**
  + [BLoC](ui/bloc/example.dart)
  + [Widgets](ui/widgets/example.dart)

To give a brief idea of the differences, for example in generating a new wallet:

* **Stateless**

  ``` dart
  final networkInfo = NetworkInfo(
    bech32Hrp: 'did:com:',
    lcdUrl: 'http://localhost:1317',
  );

  final wallet = await StatelessCommercioAccount.generateNewWallet(
    networkInfo: networkInfo);
  ```

* **Stateful**

  ``` dart
  final commercioAccount = StatefulCommercioAccount();

  await commercioAccount.generateNewWallet();
  ```

* **BLoC**

  ``` dart
  BlocProvider<CommercioAccountBloc>(
    create: (_) =>
      CommercioAccountBloc(commercioAccount: StatefulCommercioAccount()),
        child: BlocBuilder<CommercioAccountBloc, CommercioAccountState>(
          builder: (_, state) {
            if (state is CommercioAccountInitial) {
              // ...
            }

            if (state is CommercioAccountLoadingGenerateWallet) {
              // ...
            }

            if (state is CommercioAccountGeneratedWithWallet) {
              // ...
            }
          },
        ),
  )
  ```

* **Widgets**

  ```dart
  BlocProvider<CommercioAccountBloc>(
    create: (_) =>
      CommercioAccountBloc(commercioAccount: StatefulCommercioAccount()),
    child: Column(
      children: [
        GenerateWalletFlatButton(
            child: () => const Text('Generate new wallet'),
            loadingChild: () => const Text('Generating...'),
          ),
          GenerateWalletCommercioAccountTextField(
            loadingTextCallback: () => 'Generating...',
            textCallback: (state) => state.commercioAccount.walletAddress,
          ),
      ],
    ),
  )
  ```