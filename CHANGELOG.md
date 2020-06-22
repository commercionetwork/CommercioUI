## [0.1.0] - 2020-06-22

* Add more documentation
* Add examples
* Add Stateless Account and Docs tests
* Use patched version of sacco from git to make test usable
* Make stateless constructors private
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
