import 'dart:convert';

import 'package:commerciosdk/entities/crypto/tumbler_response.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

enum HttpPath {
  give,
  invite,
}

enum HttpEndpoint {
  balance,
  sentDocs,
  receivedDocs,
  getGovernment,
}

extension HttpActionExtension on HttpPath {
  String get value {
    switch (this) {
      case HttpPath.give:
        return '/give';

      case HttpPath.invite:
        return '/invite';

      default:
        return null;
    }
  }
}

extension HttpEndpointExtension on HttpEndpoint {
  // TODO: Improve using pre-calculated address
  String value({@required String walletAddress, @required String lcdUrl}) {
    switch (this) {
      case HttpEndpoint.balance:
        return '$lcdUrl/bank/balances/$walletAddress';

      case HttpEndpoint.sentDocs:
        return '$lcdUrl/docs/$walletAddress/sent';

      case HttpEndpoint.receivedDocs:
        return '$lcdUrl/docs/$walletAddress/received';

      case HttpEndpoint.getGovernment:
        return '$lcdUrl/government/tumbler';

      default:
        return null;
    }
  }
}

class HttpHelper {
  static Client httpClient = Client();
  static String defaultFaucetDomain = 'faucet-devnet.commercio.network';

  static Future<Response> faucetRequest({
    @required HttpPath path,
    @required Map<String, String> data,
    String faucetDomain,
    bool https = true,
  }) async {
    faucetDomain ??= defaultFaucetDomain;

    final uri = https
        ? Uri.https(faucetDomain, path.value, data)
        : Uri.http(faucetDomain, path.value, data);

    return httpClient.get(uri);
  }

  static Future<Response> getRequest({
    @required HttpEndpoint endpoint,
    @required String walletAddress,
    @required String lcdUrl,
  }) {
    return httpClient
        .get(endpoint.value(walletAddress: walletAddress, lcdUrl: lcdUrl));
  }

  static Future<String> getGovernmentAddress({@required String lcdUrl}) async {
    final response = await getRequest(
        endpoint: HttpEndpoint.getGovernment,
        walletAddress: null,
        lcdUrl: lcdUrl);
    final tumbler = TumblerResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);

    return tumbler.result.tumblerAddress;
  }
}
