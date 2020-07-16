import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

/// The [StatefulCommercioKyc] module allows you to buy memberships
/// to display to everyone that you've been invited by an already verified
/// members to join the network and invite other members.
class StatefulCommercioKyc {
  final StatefulCommercioAccount commercioAccount;

  /// Creates a new [StatefulCommercioKyc] with the given
  /// [commercioAccount].
  const StatefulCommercioKyc({@required this.commercioAccount});

  /// Request an member invitation from the faucet.
  /// The [walletAddress] must be not already on the chain.
  ///
  /// Throw [WalletNotFoundException] if no wallet is avaiable.
  ///
  /// Returns the [FaucetInviteResponse].
  Future<FaucetInviteResponse> requestFaucetInvite() async {
    if (!commercioAccount.hasWalletAddress) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioKyc.requestFaucetInvite(
      walletAddress: commercioAccount.walletAddress,
      httpHelper: commercioAccount.httpHelper,
    );
  }

  /// Returns the [BuyMembership] object that represent an invite for
  /// the [membershipType].
  /// To buy a membership the account must have:
  /// 1. To be invited by another member with at least bronze membership;
  /// 2. At least the required Commercio Cash Credits (CCC).
  ///    required for the [membershipType] (see [StatelessCommercioMint]).
  ///
  /// Throw [WalletNotFoundException] if no wallet is avaiable.
  BuyMembership deriveBuyMembership({
    @required MembershipType membershipType,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioKyc.deriveBuyMembership(
      membershipType: membershipType,
      wallet: commercioAccount.wallet,
    );
  }

  /// Buy a list of [membershipType] account with optional [fee] and [mode].
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> buyMemberships({
    @required List<BuyMembership> buyMemberships,
    StdFee fee,
    BroadcastingMode mode,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioKyc.buyMemberships(
      buyMemberships: buyMemberships,
      wallet: commercioAccount.wallet,
      fee: fee,
      mode: mode,
    );
  }

  /// Returns the [InviteUser] object that represent an invite for
  /// [invitedAddress].
  ///
  /// Throw [WalletNotFoundException] if no wallet is avaiable.
  InviteUser deriveInviteMember({
    @required String invitedAddress,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioKyc.deriveInviteMember(
      wallet: commercioAccount.wallet,
      invitedAddress: invitedAddress,
    );
  }

  /// Invites the list of [inviteUsers] wallet addresses from [wallet].
  /// To send an invite the
  /// [wallet] must have bought a membership (see [buyMembership()]).
  /// An optional [fee] and [mode] can be specified.
  ///
  /// Throw [WalletNotFoundException] if no wallet is avaiable.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> inviteMembers({
    @required List<InviteUser> inviteUsers,
    StdFee fee,
    BroadcastingMode mode,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioKyc.inviteMembers(
      inviteUsers: inviteUsers,
      wallet: commercioAccount.wallet,
      fee: fee,
      mode: mode,
    );
  }
}
