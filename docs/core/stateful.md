# Stateful layer

The Stateful layer is built directly on the Stateless layer so the exposes methods and functionalities are similar. Using this layer we gain:

* Commercio objects with state
* Wallet caching
* Default storing/fetching from a secret storage

In this page we will illustrate the differences between stateful and stateless, for a tour the methods exposed see the [stateless page](core/stateless.md).

## Commercio Account

Perhaps the most important entity in this layer is `StatefulCommercioAccount` and it's a good idea to keep it at a higher level of the other CommercioUI stateful entities in the widget tree.

```dart
final StatefulCommercioAccount commercioAccount = StatefulCommercioAccount();
```

In particular can be useful to override the default `NetworkInfo` and `HttpHelper` implementations to provide custom urls to interact with.

!> Changing the `NetworkInfo` after the object creation will destroy the information about the current wallet, if any. This happens because the wallet derivation depends on the `NetworkInfo` data. The wallet so should be derived again.

### Generate a new wallet

Generating a new wallet will store the given (or internally generated) mnemonic words inside the `ISecretStorage` defined in the constructor (or using the default one if not). This operation will override any mnemonic words currently saved so be sure to call the method only if the user is sure to override his wallet information.

!> To generate a new wallet without saving the mnemonic automatically please use the *stateless* version of the method.

## Commercio Id

### Generate keys

The processo of generating new keys in the stateful layer is similar to the process of generating a new wallet, thus calling `generateKeys()` will **override** any prior key pairs save inside the `ISecretStorage` (by the hypothesis that the `key` is the same).

### Generate and associate a DidDocument

A `DidDocument` can be derived from the `wallet` by calling `deriveDidDocument()` but also calling `setDidDocument()` without arguments will generate a new `DidDocument` internally and set it for the user identity:

```dart
final didDocument = await commercioId.deriveDidDocument();
final transactionResult = await commercioId.setDidDocuments(didDocuments: [didDocument]);
```

### Request a did power up

The process of requiring a did power up is very close to the *stateless* version, the only difference is that if no RSA private key is specified (now is optional) then the already generated one is tried (if there are any).

!> The key should already be loaded in memory, the method will not try to load from the `ISecureStorage`.

## Commercio Docs, Mint and KYC

These modules remains pretty the same as their *stateless* counterpart, only checking for parameters and wallet existence.
