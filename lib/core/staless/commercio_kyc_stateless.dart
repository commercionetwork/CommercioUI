import 'dart:convert';

import 'package:commercio_ui/core/utils/utils.dart';
import 'package:commercio_ui/entities/faucet_invite_response.dart';
import 'package:commerciosdk/export.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

/// The [StatelessCommercioKyc] module allows you to buy memberships
/// to display to everyone that you've been invited by an already verified
/// members to join the network and invite other members.
abstract class StatelessCommercioKyc {
  /// Request an member invitation for the [walletAddress] with optional
  /// [httpHelper]. The [walletAddress] must be not already on the chain.
  ///
  /// Returns the [FaucetInviteResponse].
  static Future<FaucetInviteResponse> requestFaucetInvite({
    @required String walletAddress,
    HttpHelper httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    Response response;
    try {
      response = await httpHelper.faucetRequest(
        path: HttpPath.invite,
        data: {
          'addr': walletAddress,
        },
      );
    } catch (e) {
      rethrow;
    }

    return FaucetInviteResponse.fromJson(jsonDecode(response.body));
  }

  /// Returns the [BuyMembership] object that represent an invite for
  /// the [membershipType].
  /// To buy a membership the [wallet] must be:
  /// 1. Invited by another member with at least bronze membership
  /// 2. Have at least the required Commercio Cash Credits (CCC)
  ///    required for the [membershipType] (see [StatelessCommercioMint]).
  static BuyMembership deriveBuyMembership({
    @required MembershipType membershipType,
    @required Wallet wallet,
  }) {
    return BuyMembershipHelper.fromWallet(
      wallet,
      membershipType,
    );
  }

  /// Buy a list of [membershipType] for the [wallet] with optional [fee]
  /// and [mode].
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> buyMemberships({
    @required List<BuyMembership> buyMemberships,
    @required Wallet wallet,
    StdFee fee,
    BroadcastingMode mode,
  }) {
    return MembershipHelper.buyMembershipsList(
      buyMemberships,
      wallet,
      fee: fee,
      mode: mode,
    );
  }

  /// Returns the [InviteUser] object that represent an invite for
  /// [invitedAddress].
  static InviteUser deriveInviteMember({
    @required String invitedAddress,
    @required Wallet wallet,
  }) {
    return InviteUserHelper.fromWallet(
      wallet,
      invitedAddress,
    );
  }

  /// Invites the list of [inviteUsers] wallet addresses from [wallet].
  /// To send an invite the
  /// [wallet] must have bought a membership (see [buyMembership()]).
  /// An optional [fee] and [mode] can be specified.
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> inviteMembers({
    @required List<InviteUser> inviteUsers,
    @required Wallet wallet,
    StdFee fee,
    BroadcastingMode mode,
  }) {
    return MembershipHelper.inviteUsersList(
      inviteUsers,
      wallet,
      fee: fee,
      mode: mode,
    );
  }
}
