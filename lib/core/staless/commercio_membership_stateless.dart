import 'package:commercio_ui/core/utils/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

class StatelessCommercioMembership {
  const StatelessCommercioMembership();

  static Future<String> requestFaucetInvite({
    @required String walletAddress,
    String faucetDomain,
  }) async {
    Response response;
    try {
      response = await HttpHelper.faucetRequest(
          path: HttpPath.invite,
          faucetDomain: faucetDomain,
          data: {
            'addr': walletAddress,
          });
    } catch (e) {
      rethrow;
    }

    return response.body;
  }

  static Future<TransactionResult> buyMembership({
    @required Wallet wallet,
    @required MembershipType membershipType,
    StdFee fee,
  }) {
    return MembershipHelper.buyMembership(membershipType, wallet, fee: fee);
  }

  static Future<TransactionResult> inviteMember({
    @required Wallet wallet,
    @required String invitedAddress,
    StdFee fee,
  }) {
    return MembershipHelper.inviteUser(invitedAddress, wallet, fee: fee);
  }
}
