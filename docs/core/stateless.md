# Stateless layer

The Stateless layer is just a convenient Flutter wrapper around [commercio-sdk.dart](https://github.com/commercionetwork/commercio-sdk.dart). The aim is to simplify the API and give more methods to store and retrieve mnemonic and RSA keys from the device secure storage.

## Commercio Account

The **StatelessCommercioAccount** module allows you to:

* Generate, save and restore [BIP39](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki)-compatible mnemonic words. This includes the option to save and restore the user [wallet](https://en.wikipedia.org/wiki/Cryptocurrency_wallet).
* Derive and generate new wallets and pairwise wallets.
* Request free tokens from the [faucet](https://en.wikipedia.org/wiki/Bitcoin_faucet) to play with in a testnet.
* Check the user balance.
* Send tokens to another wallet address.

### Manage mnemonic words and the user wallet

!> The mnemonic words are a **very** sensitive user information and must **never** be stored in a not secure enough location. The mnemonic words can be used to restore a user wallet and his private key used to sign transactions on the blockchain. For example, **never** use the [shared_preferences](https://pub.dev/packages/shared_preferences) plugin or a unprotected database to store this type of data.

To represent a generic secure storage the library uses the interface `ISecretStorage`. 

> On mobile `FlutterSecureStorage` is internally used to store sensitive informations on [Keychain](https://developer.apple.com/documentation/security/keychain_services#//apple_ref/doc/uid/TP30000897-CH203-TP1) for iOS and [Keystore](https://developer.android.com/training/articles/keystore.html) for Android.

Generating and securely saving the result becames really simple:

```dart
final mnemonic = await StatelessCommercioAccount.generateMnemonic();

// Save the mnemonic words
await StatelessCommercioAccount.storeMnemonic(
  secretStorage: SecretStorage(),
  secureStorageKey: 'my-mnemonic-key',
  mnemonic: mnemonic,
);

final wallet =  await StatelessCommercioAccount.generateNewWallet(
  mnemonic: mnemonic,
  networkInfo: NetworkInfo(
    bech32Hrp: 'did:com:',
    lcdUrl: 'http://localhost:1317',
  ),
);
```
The costructor `SecretStorage()` gives the appropriate secure storage object that can be used directly without specify a custom implementation. This choice permit to use the library on multiple platforms without touch the app code.

The stored mnemonic can be restored on the next app launch with:

```dart
final mnemonic = await StatelessCommercioAccount.fetchMnemonic(
  secretStorage: SecretStorage(),
  secureStorageKey: 'my-mnemonic-key',
);
```

If is only the user wallet that we are interested in then, assuming that mnemonic words have been saved previously, `restoreWallet` can be used:

```dart
final wallet = await StatelessCommercioAccount.restoreWallet(
  secretStorage: SecretStorage(),
  secureStorageKey: 'my-mnemonic-key',
  networkInfo: NetworkInfo(
    bech32Hrp: 'did:com:',
    lcdUrl: 'http://localhost:1317',
  ),
);
```

A pairwise wallet can be generated providing the user wallet `mnemonic`, `networkInfo` and a custom `lastDerivationPathSegment`, for example `'1'`:

```dart
final wallet = await StatelessCommercioAccount.generatePairwiseWallet(
  mnemonic: userMnemonic,
  lastDerivationPathSegment: '1',
  networkInfo: NetworkInfo(
    bech32Hrp: 'did:com:',
    lcdUrl: 'http://localhost:1317',
  ),
);
```

### Request free tokens

Free tokens can be requested for a wallet, for example user's wallet. This method should only be used in a *testnet*. Custom faucet and blockchain  addresses can be specified through the `HttpHelper`.

Using the default values the request is:

```dart
final response = await StatelessCommercioAccount.requestFreeTokens(
  walletAddress: wallet.bech32Address,
);
```
A subclass of `AccountRequestResponse` is returned, that is:

* `AccountRequestSuccess` if the request was sent without errors. A success doesn not indicate a `200` response from the server, check for that is up to the caller.
* `AccountRequestError` if a network-related error happened.

### Check account balance

The account balance of any wallet can be retrieved by calling `checkAccountBalance`:

```dart
final balance = StatelessCommercioAccount.checkAccountBalance(
  walletAddress: wallet.bech32Address,
);
```

The returned `balance` is a list of `StdCoin`, for example with the first `StdCoin` with the `ucommercio` amount and the second with the `uccc` amount.

### Send tokens

!> In a testnet, send tokens before being invited, for example from the faucet , will add the wallet to the blockchain but as **untrusted** member, thus unable to buy a membership or invite other members.

Sends an `amount` of tokens from the user `wallet` to a `recipientAddress`, that is, the recipient wallet address:

```dart
final transactionResult = await StatelessCommercioAccount.sendTokens(
  senderWallet: WalletWithAddress(
    wallet: wallet,
    address: wallet.bech32Address,
  ),
  recipientAddress: recipientAddress,
  amount: const [CommercioCoin(amount: '1000'),
);
```

The `senderWallet` is a `WalletWithAddress` to give the caller the opportunity to use a pre-calculated wallet address (the one returned by `wallet.bech32Address`) because this is an expensive operation in a low-end device or web browser.

## Commercio Id

The **StatelessCommercioId** module allows to generate RSA keys, create a new identity on the blockchain and associate it to a [Did Document](https://www.w3.org/TR/did-core/#dfn-did-documents):

* Generate, store and restore public/private RSA key pairs;
* Derive a new Did document;
* Associate a Did document to user identity;
* Recharge the [tumbler](https://en.wikipedia.org/wiki/Cryptocurrency_tumbler);
* Request a Did power up.

### Manage key pairs

To associate a Did document as the user identity two pair of RSA keys needs to be generated. They can be stored and retrieved in the same way of the *mnemonic words*, inside a secure storage location.

!> **Do not** save the RSA key pairs in an insecure storage. For example, **never** use the [shared_preferences](https://pub.dev/packages/shared_preferences) plugin or a unprotected database to store this type of data.

To generate and save the needed RSA key pairs the following procedure can be used:

```dart
final commercioIdKeys = await StatelessCommercioId.generateKeys();

// Store the new generated keys
await StatelessCommercioId.storeKeys(
  secretStorage: SecretStorage(),
  secureStorageKey: 'my-keys-key',
  idKeys: commercioIdKeys,
);

// Later restore the keys
final restoredKeys = await StatelessCommercioId.restoreKeys(
  secretStorage: SecretStorage(),
  secureStorageKey: 'my-keys-key',
);
```

The `CommercioIdKeys` object contains the verification and signature key pairs. They could be used to derive and associate a Did document.

### Derive and associate an identity

A valid Did document can be derivated using the user wallet and the pairs of RSA key. Then it can be associated to the user identity on the blockchain.

```dart
final didDocument = await StatelessCommercioId.derivateDidDocument(
  wallet: wallet,
  idKeys: commercioIdKeys,
);

// Associate the Did document to the identity
final transactionResult = await StatelessCommercioId.setDidDocument(
  didDocument: didDocument, 
  wallet: wallet,
);
```

### Request a Did power up

To request a Did power up from `senderWallet` to one of its `pairwiseAddress` with a custom `amount` of tokens use `requestDidPowerUp`:

```dart
// Generate a pairwise wallet with derivation path 1
final pairwiseWallet = await StatelessCommercioAccount.generatePairwiseWallet(
  mnemonic: userMnemonic,
  lastDerivationPathSegment: '1',
  networkInfo: NetworkInfo(
    bech32Hrp: 'did:com:',
    lcdUrl: 'http://localhost:1317',
  ),
);

final transactionResult = await StatelessCommercioId.requestDidPowerUp(
  pairwiseAddress: pairwiseWallet.bech32Address,
  senderWallet: wallet,
  amount: const [CommercioCoin(amount: '1000'),
  rsaSignaturePrivateKey: commercioIdKeys.rsaSignatureKeyPair.privateKey,
);
```

## Commercio Docs

The **StatelessCommercioDocs** allows you to:

* Send a plain/encrypted document to another user;
* Send a receipt;
* Retrieve the list of documents that you have sent/received;
* Retrieve the list of receipts that you have sent/received;

### Share documents

To share a document to a list of `recipients`:

```dart
final metadata = final correctMetadata = CommercioDocMetadata(
  contentUri: 'https://example.com/document/metadata',
  schema: CommercioDocMetadataSchema(
    uri: 'https://example.com/custom/metadata/schema',
    version: '1.0.0',
  ),
);

final transactionResult = await StatelessCommercioDocs.shareDocument(
  senderWallet: wallet,
  metadata: metadata,
  recipients: const [recipientAddress],
  contentUri: 'https://example.com/document',
);
```

If no `docId` is provided a new one is generated internally. The fields `doSign` and `checksum` should be used if a signing is required.

Similar to plain share there is an encrypted form that is similar to the plain version but also takes a list with the fields to need to be encrypted as `EncryptedData`.

For example, to share a document with 

```dart
import 'package:commerciosdk/crypto/keys_helper.dart';

// Generate an AES key with the help of commercio-sdk
final aesKey = await KeysHelper.generateAesKey();

final transactionResult = await StatelessCommercioDocs.shareEncryptedDocument(
  senderWallet: wallet,
  metadata: metadata,
  recipients: const [recipientAddress],
  contentUri: 'https://example.com/document',
  encryptedData: const [EncryptedData.CONTENT_URI],
  aesKey: aesKey,
);
```

If no `aesKey` is provided then a new one is generated internally. The key is used to encrypt the data specified by the `encryptedData` list.

### Send receipt

Send a receipt which tells back to the `recipient` that the document `docId` was read by `senderWallet`. A proof of reading can also specified.

```dart
final transactionResult = await StatelessCommercioDocs.sendReceipt(
  senderWallet: wallet,
  recipient: recipientAddress,
  txHash: 'D1B615E4B506FD0E0EAD9DA1E09204E6AA9C0A4FADA8F015C24CDD42CA3D2F66',
  docId: '0188acd7-320d-4d2f-8b74-df1a5ddbe839',
);
```

### Lists of sent/received documents and receipts

You can get the list of every document sent by some `walletAddress` by calling:

```dart
final sentDocuments = await StatelessCommercioDocs.sentDocuments(
  walletAddress: walletAddress,
);
```

In a similar way the received documents, sent and received receipts can be retrieved.

## Commercio Mint

The **StatelessCommercioMint** module is the one that allows you to create *Collateralized Debt Positions (CDPs)* using your [Commercio.network](https://commercio.network/) tokens (*ucommercio*) in order to get the **half** *Commercio Cash Credits (uccc)* in return.

### Open and close a CDP

To open a CDP with `amount` of tokens to get the half back as `CCC`:

```dart
final transactionResult = await StatelessCommercioMint.openCdp(
  wallet: wallet,
  amount: 1000000,
);
```

The opening of a CDP inserts in the blockchain a transaction at a certain block height. After have used the CCC tokens (for example buying a membership) to close a CDP we should specify the opening block height:

```dart
final transactionResult = await StatelessCommercioMint.closeCdp(
  wallet: wallet,
  blockHeight: 231434,
);
```

## Commercio KYC

The **StatelessCommercioKyc** module allows you to:

* Request an invite from the faucet;
* Buy memberships to display to everyone that you've been invited by an already verified members to join the network;
* Invite other members.


### Request an invite from the faucet

!> This command should only be run (and avaiable at all) in a testnet envronment.

To request an invite to join for the address [walletAddress] from the faucet, that is an already trusted member, just call `requestFaucetInvite`:

```dart
final inviteResponse = await StatelessCommercioKyc.requestFaucetInvite(
  walletAddress: walletAddress,
);
```

A `FaucetInviteResponse` object contains the transaction hash if the invite was successul or the error message if there was a failure:

```dart
if (inviteResponse.success) {
  // all good, walletAddress was invited
} else {
  // handle the error
}
```

### Buy a membership and invite other members

A trusted member of the blockchain can buy a membership (given that has already buyed enough Commercio Cash Credits (CCC)) with:

```dart
final transactionResult = await StatelessCommercioKyc.buyMembership(
  wallet: wallet,
  membershipType: MembershipType.BRONZE,
);
```

Now that the user has buyed a membership of at least level `BRONZE` he can invite other members:

```dart
final invitedAddress = 'did:com:1a223..';  // A wallet address of a new non-member

final transactionResult = await StatelessCommercioKyc.inviteMember(
  wallet: wallet,
  invitedAddress: invitedAddress,
);
```