import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';
import 'package:get/get.dart';

/// [GetxController] that wraps the [Wallet] generation inside a method
/// and exposes an observable value to rebuild UI when generating or not.
class WalletWithMnemonicsController extends GetxController {
  final isGenerating = RxBool(false);

  /// Derive a new [Wallet], stores it and notify when the generation
  /// process is on through [isGenerating].
  Future<Wallet> deriveNewWallet() async {
    final commercioAccount = Get.find();
    isGenerating.value = true;

    final wallet = await commercioAccount.generateNewWallet();

    isGenerating.value = false;

    return wallet;
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Example app',
      home: const ExamplePage(),
    );
  }
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key key}) : super(key: key);

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final TextEditingController walletTextController = TextEditingController();
  final TextEditingController mnemonicTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Get.put<StatefulCommercioAccount>(StatefulCommercioAccount(
      storage: SecretStorage(),
    ));
  }

  @override
  void dispose() {
    mnemonicTextController.dispose();
    walletTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: Column(
          children: [
            GetX<WalletWithMnemonicsController>(
              init: WalletWithMnemonicsController(),
              builder: (ctrl) {
                final fn = ctrl.isGenerating.value
                    ? null
                    : () => ctrl.deriveNewWallet();
                final text = ctrl.isGenerating.value
                    ? 'Generating...'
                    : 'Generate new wallet';

                return FlatButton(
                  onPressed: fn,
                  textColor: Colors.brown,
                  color: Colors.orange,
                  disabledColor: Colors.orange[700],
                  child: Text(text),
                );
              },
            ),
            const Text('Mnemonic words:'),
            GetX<WalletWithMnemonicsController>(
              builder: (ctrl) {
                final commercioAccount = Get.find();

                if (ctrl.isGenerating.value) {
                  mnemonicTextController.text = 'Generating...';
                } else {
                  mnemonicTextController.text = commercioAccount.hasMnemonic
                      ? commercioAccount.mnemonic
                      : '';
                }

                return TextField(
                  controller: mnemonicTextController,
                  readOnly: true,
                  maxLines: null,
                );
              },
            ),
            const Text('Wallet address:'),
            GetX<WalletWithMnemonicsController>(
              builder: (ctrl) {
                final commercioAccount = Get.find();

                if (ctrl.isGenerating.value) {
                  walletTextController.text = 'Generating...';
                } else {
                  walletTextController.text = commercioAccount.hasWalletAddress
                      ? commercioAccount.walletAddress
                      : '';
                }

                return TextField(
                  controller: walletTextController,
                  readOnly: true,
                  maxLines: null,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
