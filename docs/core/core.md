# Core

The core layer is built around [commercio-sdk](https://github.com/commercionetwork/commercio-sdk.dart) to provide a simpler development experience for builing Flutter applications. This layer does not provide custom UI widgets and the *stateful* classes will contain only simple logic.

This layer should be chosen when the developer wants to provide his full logic and UI implementation. The exposed classes, in particular the stateless ones, can be viewed as **services**, thus allowing to use them in your team favourite state management solution.

## Provider with ChangeNotifier

It's easy to use *CommercioUI* with [Provider](https://pub.dev/packages/provider) and [ChangeNotifier](https://api.flutter.dev/flutter/foundation/ChangeNotifier-class.html). Start with wrapping `StatefulCommercioAccount` as a service inside a `ChangeNotifier` that notify when the wallet derivation starts and ends:

```dart
class WalletWithMnemonicsModel extends ChangeNotifier {
  final StatefulCommercioAccount commercioAccount;
  bool isGenerating;

  WalletWithMnemonicsModel({
    @required this.commercioAccount,
    this.isGenerating = false,
  });

  Future<Wallet> deriveNewWallet() async {
    isGenerating = true;
    notifyListeners();

    final wallet = await commercioAccount.generateNewWallet();

    isGenerating = false;
    notifyListeners();

    return wallet;
  }
}
```

Now we can provide the `ChangeNotifier` using `ChangeNotifierProvider`:

```dart
ChangeNotifierProvider(
  create: (_) => WalletWithMnemonicsModel(
    commercioAccount: StatefulCommercioAccount(),
  ),
  child: const ExamplePage(),
)
```

And consuming it inside the widget tree:

```dart
Consumer<WalletWithMnemonicsModel>(
  builder: (context, value, child) {
    Function() fn = value.isGenerating ? null : () => value.deriveNewWallet();
    String text = value.isGenerating
      ? 'Generating...'
      : 'Generate new wallet';

    return FlatButton(
      onPressed: fn,
      child: Text(text),
    );
  },
),

// ...
```

## MobX

[MobX](https://pub.dev/packages/mobx/) is a multi-platform state management library that is built around the concepts of observables, actions and reactions. We inject the `StatefulCommercioAccount` service in the widget constructor:

```dart
ExamplePage(
  walletWithMnemonics: WalletWithMnemonics(
    commercioAccount: StatefulCommercioAccount(),
  ),
)
```

The  built `Store` uses `isGenerating` as `Observable` to notify an `Observer` when it needs to rebuild and `deriveNewWallet()` as an `Action`:

```dart
class WalletWithMnemonics = WalletWithMnemonicsBase with _$WalletWithMnemonics;

abstract class WalletWithMnemonicsBase with Store {
  @observable
  bool isGenerating;

  final StatefulCommercioAccount commercioAccount;

  WalletWithMnemonicsBase({
    @required this.commercioAccount,
    this.isGenerating = false,
  });

  @action
  Future<Wallet> deriveNewWallet() async {
    isGenerating = true;

    final wallet = await commercioAccount.generateNewWallet();

    isGenerating = false;

    return wallet;
  }
}
```

The `Observable` can rebuild when `isGenerating` changes:

```dart
Observer(
  builder: (_) {
    Function() fn = widget.walletWithMnemonics.isGenerating
      ? null
      : () => widget.walletWithMnemonics.deriveNewWallet();
    String text = widget.walletWithMnemonics.isGenerating
      ? 'Generating...'
      : 'Generate new wallet';

    return FlatButton(
      onPressed: fn,
      child: Text(text),
    );
  },
),
```

## GetX

[GetX](https://pub.dev/packages/get/) is a rasing popular library that includes service, state, route management and more. *CommercioUI* core layer can be put as a *Service* and obtained when needed.

Create a GetX application and add the `StatefulCommercioAccount` service:

```dart
GetMaterialApp(
  title: 'Example app',
  home: const ExamplePage(),
);

// ...

@override
void initState() {
  super.initState();
  Get.put<StatefulCommercioAccount>(StatefulCommercioAccount());
}
```

The `GetxController` is similar to the `ChangeNotifier` model:

```dart
class WalletWithMnemonicsController extends GetxController {
  final isGenerating = RxBool(false);

  Future<Wallet> deriveNewWallet() async {
    StatefulCommercioAccount commercioAccount = Get.find();
    isGenerating.value = true;

    final wallet = await commercioAccount.generateNewWallet();

    isGenerating.value = false;

    return wallet;
  }
}
```

In the widget tree use `GetX` to build the widgets:

```dart
GetX<WalletWithMnemonicsController>(
  init: WalletWithMnemonicsController(),
  builder: (ctrl) {
    Function() fn = ctrl.isGenerating.value
      ? null
      : () => ctrl.deriveNewWallet();
    String text = ctrl.isGenerating.value
      ? 'Generating...'
      : 'Generate new wallet';

    return FlatButton(
      onPressed: fn,
      child: Text(text),
    );
  },
),
```
