import 'dart:convert';

import 'package:commerciosdk/entities/crypto/tumbler_response.dart';
import 'package:http/http.dart';

enum HttpPath {
  give,
  invite,
}

enum HttpEndpoint {
  balance,
  didDocument,
  getTumbler,
  receivedDocs,
  receivedReceipts,
  sentDocs,
  sentReceipts,
  exchangedTradePositions,
}

extension HttpActionExtension on HttpPath {
  String get value {
    switch (this) {
      case HttpPath.give:
        return '/give';

      case HttpPath.invite:
        return '/invite';
    }
  }
}

extension HttpEndpointExtension on HttpEndpoint {
  Uri value({
    required Uri lcdUrl,
    String? walletAddress,
  }) {
    switch (this) {
      case HttpEndpoint.balance:
        return Uri.parse('${lcdUrl.toString()}/bank/balances/$walletAddress');

      case HttpEndpoint.didDocument:
        return Uri.parse('${lcdUrl.toString()}/identities/$walletAddress');

      case HttpEndpoint.sentDocs:
        return Uri.parse('${lcdUrl.toString()}/docs/$walletAddress/sent');

      case HttpEndpoint.receivedDocs:
        return Uri.parse('${lcdUrl.toString()}/docs/$walletAddress/received');

      case HttpEndpoint.sentReceipts:
        return Uri.parse('${lcdUrl.toString()}/receipts/$walletAddress/sent');

      case HttpEndpoint.receivedReceipts:
        return Uri.parse(
            '${lcdUrl.toString()}/receipts/$walletAddress/received');

      case HttpEndpoint.getTumbler:
        return Uri.parse('${lcdUrl.toString()}/government/tumbler');

      case HttpEndpoint.exchangedTradePositions:
        return Uri.parse(
            '${lcdUrl.toString()}/commerciomint/etps/$walletAddress');
    }
  }
}

/// Http helper class to send HTTP request to the chain.
class HttpHelper {
  final Client httpClient;
  final String faucetDomain;
  final Uri lcdUrl;

  /// Creates a new [HttpHelper] with optional [httpClient], [faucetDomain] and
  /// [lcdUrl].
  HttpHelper({
    Client? httpClient,
    String? faucetDomain,
    Uri? lcdUrl,
  })  : httpClient = httpClient ?? Client(),
        faucetDomain = faucetDomain ?? 'faucet-devnet.localhost',
        lcdUrl = lcdUrl ?? Uri.parse('http://localhost:1317');

  /// Send a faucet request to the given [path] with [data]. Optionally [https]
  /// can be specified to use HTTPS instead of HTTP, enabled by default.
  ///
  /// Returns the HTTP [Response].
  Future<Response> faucetRequest({
    required HttpPath path,
    required Map<String, String> data,
    bool https = true,
  }) async {
    final uri = https
        // ignore: unnecessary_this
        ? Uri.https(faucetDomain, path.value, data)
        // ignore: unnecessary_this
        : Uri.http(faucetDomain, path.value, data);

    return httpClient.get(uri);
  }

  /// Send a HTTP GET request to the [endpoint] at the specified
  /// [walletAddress]. An optional [lcdUrl] can be specified.
  ///
  /// Returns the [Response].
  Future<Response> getRequest({
    required HttpEndpoint endpoint,
    String? walletAddress,
    Uri? lcdUrl,
  }) {
    return httpClient.get(
      endpoint.value(
        walletAddress: walletAddress,
        lcdUrl: lcdUrl ?? this.lcdUrl,
      ),
    );
  }

  /// Returns the tumbler Tk government address with optional [lcdUrl].
  Future<String> getTumblerAddress({Uri? lcdUrl}) async {
    final response = await getRequest(
      endpoint: HttpEndpoint.getTumbler,
      walletAddress: null,
      lcdUrl: lcdUrl ?? this.lcdUrl,
    );
    final tumbler = TumblerResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );

    return tumbler.result.tumblerAddress;
  }
}
