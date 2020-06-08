import 'package:commercio_ui/core/utils/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

class StatelessCommercioMembership {
  const StatelessCommercioMembership();

  /// Request an member invitation for the [walletAddress] with optional
  /// [httpHelper]. The [walletAddress] must be not already on the chain.
  ///
  /// Returns the response text.
  static Future<String> requestFaucetInvite({
    @required String walletAddress,
    String faucetDomain,
    HttpHelper httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    Response response;
    try {
      response = await httpHelper.faucetRequest(path: HttpPath.invite, data: {
        'addr': walletAddress,
      });
    } catch (e) {
      rethrow;
    }

    return response.body;
  }

  /// Buy a [membershipType] for the [wallet] with optional [fee].
  ///
  /// To buy a membership the [wallet] must be:
  /// 1. Invited by another member with at least bronze membership
  /// 2. Have at least the required Commercio Cash Credits (CCC)
  ///    required for the [membershipType] (see [StatelessCommercioMint]).
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> buyMembership({
    @required Wallet wallet,
    @required MembershipType membershipType,
    StdFee fee,
  }) {
    return MembershipHelper.buyMembership(membershipType, wallet, fee: fee);
  }

  /// Invite a new [invitedAddress] to the chain. To send an invite the
  /// [wallet] must have bought a membership (see [buyMembership()]).
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> inviteMember({
    @required Wallet wallet,
    @required String invitedAddress,
    StdFee fee,
  }) {
    return MembershipHelper.inviteUser(invitedAddress, wallet, fee: fee);
  }
}
