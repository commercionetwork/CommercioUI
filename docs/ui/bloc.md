# BLoC

The UI BLoC layer provides already built blocs, events and states that can be used in every application. The opinionated choice to use BLoC instead other architectural patterns was made to keep the library and its functions as separated as possible.

Just add the only blocs that you need, they will take care of:

* Provide logic, states and events
* Store state in-memory and via secure storage (the Stateful layer is used)
* No need to use `setState()`

## Repositories

To inject *CommercioUI* services with [flutter_bloc](https://pub.dev/packages/flutter_bloc) we can use a `RepositoryProvider`:

```dart
RepositoryProvider<StatefulCommercioAccount>(
  create: (_) => StatefulCommercioAccount(),
  child: const MyApp(),
),
```

to inject the logic that belongs to a part of the widget tree we can use `BlocProvider` with the already avaiable BLoCs:

```dart
final commercioAccount = RepositoryProvider.of<StatefulCommercioAccount>(context);

BlocProvider<CommercioAccountGenerateWalletBloc>(
  create: (context) => CommercioAccountGenerateWalletBloc(
    commercioAccount: commercioAccount,
  ),
  child: MaterialApp(
    title: 'Example App',
    home: ExamplePage(),
  ),
)
```

## Freezed states

With the help of [freezed](https://pub.dev/packages/freezed) the states given by *CommercioUI* can be easily used in a pattern-matching fashion to reduce boilerplate:

```dart
state.when(
  (mnemonic, wallet, walletAddress) {
    mnemonicTextController.text = mnemonic;
    walletTextController.text = walletAddress;
    flatButtonText = 'Generate new wallet';
  },
  initial: () {
    mnemonicTextController.text = '';
    walletTextController.text = '';
    latButtonText = 'Generate new wallet';
  },
  loading: () {
    walletTextController.text = 'Generating...';
    mnemonicTextController.text = 'Generating...';
    flatButtonText = 'Generating...';
    onPressed = null;
  },
  error: (e) {
    walletTextController.text = 'Error $e';
    mnemonicTextController.text = 'Error $e';
    flatButtonText = 'Generate new wallet';
  },
);
```

## BlocConsumer

Inside the `build()` method retrieve the provided BLoC:

```dart
final generateWalletBloc = context.bloc<CommercioAccountGenerateWalletBloc>();
```

This way the `BlocConsumer` (suggested over `BlocBuilder` to handle errors) keeps the widget code clean:

```dart
BlocConsumer<CommercioAccountGenerateWalletBloc, CommercioAccountGenerateWalletState>(
  listener: (context, state) {
    state.when(
      (mnemonic, wallet, walletAddress) => null,
      initial: () => null,
      loading: () => null,
      error: (e) => Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      ),
    );
  },
  builder: (_, state) {
    Function() onPressed = () => generateWalletBloc
      .add(const CommercioAccountGenerateWalletEvent());

    // Map states with .when() like the code snipper already seen

    Column(
      children: [
        FlatButton(
          onPressed: onPressed,
          child: Text(flatButtonText),
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
    )
  }
)
```
