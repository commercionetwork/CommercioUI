import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

/// The [StatefulCommercioMembership] module allows you to buy memberships
/// to display to everyone that you've been invited by an already verified
/// members to join the network and invite other members.
class StatefulCommercioMembership {
  final StatefulCommercioAccount commercioAccount;

  /// Creates a new [StatefulCommercioMembership] with the given
  /// [commercioAccount].
  const StatefulCommercioMembership({@required this.commercioAccount});

  /// Request an member invitation from the faucet.
  /// The [walletAddress] must be not already on the chain.
  ///
  /// Throw [WalletNotFoundException] if no wallet is avaiable.
  ///
  /// Returns the response text.
  Future<String> requestFaucetInvite() async {
    if (commercioAccount.walletAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioMembership.requestFaucetInvite(
        walletAddress: commercioAccount.walletAddress,
        httpHelper: commercioAccount.httpHelper);
  }

  /// Buy a [membershipType] with optional [fee].
  ///
  /// To buy a membership the account must be:
  /// 1. Invited by another member with at least bronze membership
  /// 2. Have at least the required Commercio Cash Credits (CCC)
  ///    required for the [membershipType] (see [StatefulCommercioMint]).
  ///
  /// Throw [WalletNotFoundException] if no wallet is avaiable.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> buyMembership({
    @required MembershipType membershipType,
    StdFee fee,
  }) {
    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return MembershipHelper.buyMembership(
        membershipType, commercioAccount.wallet,
        fee: fee);
  }

  /// Invite a new [invitedAddress] to the chain. To send an invite the
  /// account must have bought a membership (see [buyMembership()]).
  ///
  /// Throw [WalletNotFoundException] if no wallet is avaiable.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> inviteMember({
    @required String invitedAddress,
    StdFee fee,
  }) {
    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return MembershipHelper.inviteUser(invitedAddress, commercioAccount.wallet,
        fee: fee);
  }
}
