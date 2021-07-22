## [0.2.0] - 2020-10-28

* **[BREAKING]** Remove `mnemonic` attribute and `hasMnemonic` getter from `StatefulCommercioAccount`
* **[BREAKING]** Make `mnemonic` argument in `storeMnemonic()` as `required`
* **[BREAKING]** `restoreWallet()` now returns a `WalletWithMnemonic` entity
* **[BREAKING]** Update `CommercioAccountSendTokensEvent` replacing `recipientAddress` with `recipientAddresses`

## [0.1.0] - 2020-07-17

* **Experimental web support**: the app can be compiled and used in a web browser. Keep in mind that the web support is only for demonstration purposes.
* **Experimental linux support**: the app can be compiled and used on a desktop pc. Keep in mind that the desktop support is only for demonstration purposes.
* Move sources into `src` directory
* **HttpHelper**
  * Rename `getGovernment` in `getTumbler` for `HttpEndpoint`
  * Remove optional `faucetDomain` param in `faucetRequest`
  * Add `HttpEndpoint.sentReceipts`
  * Add `HttpEndpoint.receivedReceipts`
* **CommercioFlatButton**
  * Rename `EventFlatButton` to `CommercioFlatButton`
  * Add `BuildContext` parameter
  * Rename `loadingChild` to `loading`
  * Rename `accountEventCallback` to `event`
  * Rename `errorCallback` to `error`
* **TypeHelper**
  * Rename `freezedEquals` to `hasType`
  * Stricter comparing
* **CommercioText**
  * Rename `CommercioTextWidget` to `CommercioText`
  * Add `BuildContext` parameter
  * Rename `textCallback` to `text`
  * Rename `loadingTextCallback` to `loading`
* **CommercioTextField**
  * Add `BuildContext` parameter
  * Rename `textCallback` to `text`
  * Rename `loadingTextCallback` to `loading`
  * Rename `errorCallback` to `error`
* **CommercioId**
  * Rename `derivateDidDocument` to `deriveDidDocument`
* **StatelessCommercioId**
  * Remove `fetchKeys()`. Use `restoreKeys()` instead
* **StatelessCommercioAccount**
  * Replace in `sendTokens()` the parameters `senderAddress` and `senderWallet` using a single `WalletWithAddress senderWallet`
* **StatelessCommercioKyc**
  * Remove `faucetDomain` parameter in `requestFaucetInvite()`
* **StatefulCommercioAccount**
  * Make `mnemonic` in `storeMnemonic` optional
* **CommercioDocs**
  * Completly revisit old wrong implementation
  * Add `walletAddress` parameter
* **Remove base states**
  * Remove `CommercioState`
  * Remove `CommercioAccountState`
  * Remove `CommercioDocsState`
  * Remove `CommercioIdState`
  * Remove `CommercioKycState`
  * Remove `CommercioMintState`
* Add `didDocument` field in `props` of `CommercioIdSetDidDocumentEvent`
* Correctly catch errors in `CommercioMintOpenCdpBloc` and `CommercioMintCloseCdpBloc`
* Add `BroadcastingMode`
* Support multiple transactions with their object derivations
* **Test**: Bump code coverage to 97%
* **SecretStorage**
  * Remove direct references to `FlutterSecureStorage` to use `ISecretStorage` and `SecretStorage` instead because of web support
* Rename library export files, e.g. `export.dart` to `utils.dart`
* Add `FaucetInviteResponse` entity class
* **Widget layer**: Rename and simplify custom arguments in `CommercioFlatButton`, `CommercioText` and `CommercioTextField`:
  * Rename `loadingChild` to `loading`
  * Rename `accountEventCallback` to `event`
  * Rename `errorCallback` to `error`
  * Add `BuildContext` as paramenter
* **Dependencies**
  * Add `freezed_annotation`
  * Add `shared_preferences` and `shared_preferences_web`
  * Update `flutter_bloc` and `bloc` to 6.0
  * Update `basic_utils` to 2.5.6
  * Update `uuid` to 2.2.0
  * Remove `meta`
* Add Stateless Account and Docs tests
* Use patched version of sacco from git to make test usable
* Make stateless constructors private
* Make `Stateless` classes concrete and remove static methods
* **Stateless Account**
  * Fix `generatePairwiseWallet`, make `mnemonic` and `lastDerivationPathSegment` required parameters
  * Update `requestFreeTokens` removing `faucetDomain` and add optional `httpHelper`
  * Update `checkAccountBalance` removing `lcdUrl` and add optional `httpHelper`
* **Stateless Docs**
  * Update `shareEncryptedDocument` make `aesKey` optional
  * Update `sendReceipt` add `proof` and `fee`
  * Add method `sentReceipts`
  * Add method `receivedReceipts`
* **Stateless Id**
  * Update `derivateDidDocument` add `service` parameter
  * Update `setDidDocument` add `fee` parameter
  * Update `rechargeGovernment` add `httpHelper` parameter
* **Stateless Membership**
  * Update `requestFaucetInvite` add `httpHelper` parameter
* **Stateful Account**
  * Update `StatefulCommercioAccount` add `httpHelper` parameter
  * Make `NetworkInfo` non-final to add possibility to be updated
  * Fix `storeMnemonic` to try using current mnemonic if they exist
  * Fix `generateNewWallet` correctly saving the mnemonic
  * Update `generatePairwiseWallet` remove `newMnemonic`
  * Update `requestFreeTokens` remove `faucetDomain`
* **Stateful Docs**
  * Update `shareEncryptedDocument` make `aesKey` optional
  * Update `sendReceipt` add optional `proof` and `fee`
  * Add `sentReceipts`
  * Add `receivedReceipts`
* **Stateful Id**
  * Update `derivateDidDocument` add optional `service`
* **Stateful Membership**
  * Update `requestFaucetInvite` remove `faucetDomain`
* **Stateful Mint**
  * Update `openCdp` fix `fee` parameter
* **HttpHelper**
  * Rename `defaultFaucetDomain` to `faucetDomain`
  * Update `faucetRequest` make `lcdUrl` optional
  * Update `getGovernmentAddress` make `lcdUrl` optional
* Update `CommercioAccountGeneratePairwiseWalletEvent` remove `newMnemonic` and make `lastDerivationPath` optional
* Update **Widgets** layer adding generic callback functions
* Rename `RestoreWalletCommercioAccountText` to `RestoreWalletText`
* Rename `GenerateWalletCommercioAccountText` to `GenerateWalletText`
* Rename `RequestFreeTokensCommercioAccountText` to `RequestFreeTokensText`
* Rename `CheckBalanceCommercioAccountText` to `CheckBalanceText`
* Rename `SendTokensCommercioAccountText` to `SendTokensText`
* Rename `GeneratePairwiseWalletCommercioAccountText` to `GeneratePairwiseWalletText`
* Rename `RestoreWalletCommercioAccountTextField` to `RestoreWalletTextField`
* Rename `GenerateWalletCommercioAccountTextField` to `GenerateWalletTextField`
* Rename `RequestFreeTokensCommercioAccountTextField` to `RequestFreeTokensTextField`
* Rename `CheckBalanceCommercioAccountTextField` to `CheckBalanceTextField`
* Rename `SendTokensCommercioAccountTextField` to `SendTokensTextField`
* Rename `GeneratePairwiseWalletCommercioAccountTextField` to `GeneratePairwiseWalletTextField`
* Add `CommercioDocsEncDataBloc`
* Add `CommercioDocsSentReceipts`
* Add `CommercioDocsReceivedReceipts`
* Add `CommercioDocsEncDataState`
* Add `CommercioDocsEncDataInitial`
* Add `CommercioDocsEncDataChanged`
* Add `CommercioDocsSentReceiptsError`
* Add `CommercioDocsReceivedReceiptsError`
* Add `CommercioDocsSentReceiptsLoading`
* Add `CommercioDocsReceivedReceiptsLoading`
* Add `SentReceiptsFlatButton`
* Add `ReceivedReceiptsFlatButton`
* Add `ShareDocumentEncryptedDataSwitchListTiles`
* Add `SentReceiptsText`
* Add `ReceivedReceiptsText`
* Add `SentReceiptsTextField`
* Add `ReceivedReceiptsTextField`

## [0.0.1] - 2020-06-04

* Initial release.
