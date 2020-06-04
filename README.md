# CommercioUI

CommercioUI reduces your overall  blockchain app development time by 90% because of its pre-build clean Core+UI widgets that you can use in any flutter app development. We have spent  one year to build this library to make to make your life easier.

![Commercio UI Infographic](/doc/images/commercio_ui_infographic.png)

## Core

### Stateless

The **Stateless** part is just a lightweight layer built on top of the [commercio-sdk](https://github.com/commercionetwork/commercio-sdk.dart). It's thought to give the maximum flexibility to the developer.

Example of usage when generating a new wallet:
```dart
final networkInfo = NetworkInfo(
  bech32Hrp: 'did:com:',
  lcdUrl: 'http://localhost:1317',
);

final wallet = await StatelessCommercioAccount.generateNewWallet()
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
