import 'package:commercio_ui/core/staless/commercio_membership_stateless.dart';
import 'package:commercio_ui/core/stateful/commercio_account_stateful.dart';
import 'package:commercio_ui/entities/exceptions/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

class StatefulCommercioMembership {
  final StatefulCommercioAccount commercioAccount;

  const StatefulCommercioMembership({@required this.commercioAccount});

  Future<String> requestFaucetInvite({String faucetDomain}) async {
    if (commercioAccount.walletAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioMembership.requestFaucetInvite(
        walletAddress: commercioAccount.walletAddress);
  }

  Future<TransactionResult> buyMembership(
      {@required MembershipType membershipType, StdFee fee}) {
    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return MembershipHelper.buyMembership(
        membershipType, commercioAccount.wallet,
        fee: fee);
  }

  Future<TransactionResult> inviteMember(
      {@required String invitedAddress, StdFee fee}) {
    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return MembershipHelper.inviteUser(invitedAddress, commercioAccount.wallet,
        fee: fee);
  }
}
