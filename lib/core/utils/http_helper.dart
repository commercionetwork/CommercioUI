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

/// Http helper class to send HTTP request to the chain.
class HttpHelper {
  final Client httpClient;
  final String faucetDomain;
  final String lcdUrl;

  /// Creates a new [HttpHelper] with optional [httpClient], [faucetDomain] and
  /// [lcdUrl].
  HttpHelper({
    Client httpClient,
    String faucetDomain,
    String lcdUrl,
  })  : httpClient = httpClient ?? Client(),
        faucetDomain = faucetDomain ?? 'faucet-devnet.localhost',
        lcdUrl = lcdUrl ?? 'http://localhost:1317';

  /// Send a faucet request to the given [path] with [data]. Optionally [https]
  /// [faucetDomain] can be specified.
  ///
  /// Returns the HTTP [Response].
  Future<Response> faucetRequest({
    @required HttpPath path,
    @required Map<String, String> data,
    bool https = true,
    String faucetDomain,
  }) async {
    final uri = https
        ? Uri.https(faucetDomain ?? this.faucetDomain, path.value, data)
        : Uri.http(faucetDomain ?? this.faucetDomain, path.value, data);

    return httpClient.get(uri);
  }

  /// Send a HTTP GET request to the [endpoint] at the specified
  /// [walletAddress]. An optional [lcdUrl] can be specified.
  ///
  /// Returns the [Response].
  Future<Response> getRequest({
    @required HttpEndpoint endpoint,
    @required String walletAddress,
    String lcdUrl,
  }) {
    return httpClient.get(endpoint.value(
        walletAddress: walletAddress, lcdUrl: lcdUrl ?? this.lcdUrl));
  }

  /// Returns the tumbler Tk government address with optional [lcdUrl].
  Future<String> getGovernmentAddress({String lcdUrl}) async {
    final response = await getRequest(
        endpoint: HttpEndpoint.getGovernment,
        walletAddress: null,
        lcdUrl: lcdUrl ?? this.lcdUrl);
    final tumbler = TumblerResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);

    return tumbler.result.tumblerAddress;
  }
}
