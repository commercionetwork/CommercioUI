# Widgets

The **Widgets** layer contains pre-built widgets capable to send events and receive states. Currently those widgets are supported out of the box:

* **Display results**
  * Text
  * TextField
* **Send events**
  * FlatButton

## Provider

This layer still require the injection of *repositories* and *blocs* around the widgets:

```dart
RepositoryProvider<StatefulCommercioAccount>(
  create: (_) => StatefulCommercioAccount(),
  child: const MyApp(),
),

// ...

BlocProvider<CommercioAccountGenerateWalletBloc>(
  create: (_) => CommercioAccountGenerateWalletBloc(
    commercioAccount: RepositoryProvider.of<StatefulCommercioAccount>(context),
  ),
  child: MaterialApp(
    title: 'Example App',
    home: ExamplePage(),
  ),
)
```

## Send events

Now that the widget sub-tree is provided with the BLoC we can insert the widgets from *CommercioUI*. To send an event to require the BLoC to generate a new wallet we can add `GenerateWalletFlatButton`:

```dart
GenerateWalletFlatButton(
  event: () => const CommercioAccountGenerateWalletEvent(),
  child: (_) => const Text('Generate new wallet'),
),
```

The event `CommercioAccountGenerateWalletEvent` is explicit to give the possibility to pass required or optional parameters.

## Receive events

When the BLoC has finished to create and save the wallet the resulting state can be intercepted by another *CommercioUI* widget, for example a custom `TextField*:

```dart
GenerateWalletTextField(
  readOnly: true,
  loading: (_) => 'Generating...',
  text: (_, state) => state.walletAddress,
),
```

The `TextField` automatically manages its internal `TextEditingController` and can intercept the states:

* *Error*: if an exception or error occurs;
* *Loading* (required): the text to display when the BLoC is working;
* *Text* (requried): the text to display when the BLoC has finished working with the resulting data.

In our case `state` has type `CommercioAccountGenerateWalletData` which contains the mnemonic words, `Wallet` instance and the alredy computed wallet address.
