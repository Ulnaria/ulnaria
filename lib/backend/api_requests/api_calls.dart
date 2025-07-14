import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Moralis Group Code

class MoralisGroup {
  static String getBaseUrl() => 'https://deep-index.moralis.io/api/v2.2';
  static Map<String, String> headers = {
    'X-API-Key':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJub25jZSI6Ijg2OGYzNDViLTU2ZTQtNGJkNS1hM2Y1LTQzZTY4M2M5YmZhNiIsIm9yZ0lkIjoiMzc2NzM2IiwidXNlcklkIjoiMzg3MTQ4IiwidHlwZUlkIjoiNTAzZjJhNWUtZTU3MC00MjlkLWE1MTEtNTViNDJkYmQ5MjVmIiwidHlwZSI6IlBST0pFQ1QiLCJpYXQiOjE3MDc2NTI0MjcsImV4cCI6NDg2MzQxMjQyN30.5pPSaypoeTC0CwPtWOtR4l2MmZpvBhb4Xj1DvTe57QI',
    'accept': 'application/json',
  };
  static TradingActivityCall tradingActivityCall = TradingActivityCall();
  static WalletActivityCall walletActivityCall = WalletActivityCall();
}

class TradingActivityCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = MoralisGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'TradingActivity',
      apiUrl:
          '${baseUrl}/wallets/0xd8da6bf26964af9d7eed9e03e53415d37aa96045/profitability/summary?days=all&chain=eth',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJub25jZSI6Ijg2OGYzNDViLTU2ZTQtNGJkNS1hM2Y1LTQzZTY4M2M5YmZhNiIsIm9yZ0lkIjoiMzc2NzM2IiwidXNlcklkIjoiMzg3MTQ4IiwidHlwZUlkIjoiNTAzZjJhNWUtZTU3MC00MjlkLWE1MTEtNTViNDJkYmQ5MjVmIiwidHlwZSI6IlBST0pFQ1QiLCJpYXQiOjE3MDc2NTI0MjcsImV4cCI6NDg2MzQxMjQyN30.5pPSaypoeTC0CwPtWOtR4l2MmZpvBhb4Xj1DvTe57QI',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class WalletActivityCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = MoralisGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'WalletActivity',
      apiUrl:
          '${baseUrl}/wallets/0xcB1C1FdE09f811B294172696404e88E658659905/history?chain=eth&order=DESC',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJub25jZSI6Ijg2OGYzNDViLTU2ZTQtNGJkNS1hM2Y1LTQzZTY4M2M5YmZhNiIsIm9yZ0lkIjoiMzc2NzM2IiwidXNlcklkIjoiMzg3MTQ4IiwidHlwZUlkIjoiNTAzZjJhNWUtZTU3MC00MjlkLWE1MTEtNTViNDJkYmQ5MjVmIiwidHlwZSI6IlBST0pFQ1QiLCJpYXQiOjE3MDc2NTI0MjcsImV4cCI6NDg2MzQxMjQyN30.5pPSaypoeTC0CwPtWOtR4l2MmZpvBhb4Xj1DvTe57QI',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Moralis Group Code

/// Start Thirdweb Group Code

class ThirdwebGroup {
  static String getBaseUrl() => 'https://bridge.thirdweb.com/v1';
  static Map<String, String> headers = {
    'x-client-id': '9f170f432c8b5a5831cde8983a260b93',
    'x-secret-key':
        'JMM8AnE0Ds0HmPGkR6S6Z0nEfSk7O8AJnF17dH3ygZgRLIuozUDecgRSRfCOUyD99VTPV7Ws5PdBiKK1jY2LJA',
    'Content-Type': 'application/json',
  };
  static TransferAssetCall transferAssetCall = TransferAssetCall();
}

class TransferAssetCall {
  Future<ApiCallResponse> call({
    int? chainId = 10,
    String? tokenAddress = '0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE',
    int? transferAmountWei = 1000000000000000000,
    String? sender = '0x2a4f24F935Eb178e3e7BA9B53A5Ee6d8407C0709',
    String? receiver = '0xD78403A2B3f4c2Ce21f20787ae95A4b52CA88731',
    String? feePayer = 'sender',
    String? paymentLinkId = '1234-5678-9012-ABCD',
  }) async {
    final baseUrl = ThirdwebGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Transfer Asset',
      apiUrl: '${baseUrl}/transfer/prepare',
      callType: ApiCallType.GET,
      headers: {
        'x-client-id': '9f170f432c8b5a5831cde8983a260b93',
        'x-secret-key':
            'JMM8AnE0Ds0HmPGkR6S6Z0nEfSk7O8AJnF17dH3ygZgRLIuozUDecgRSRfCOUyD99VTPV7Ws5PdBiKK1jY2LJA',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Thirdweb Group Code

class CreateWalletCall {
  static Future<ApiCallResponse> call({
    String? email = 'jeroldkoutou@gmail.com',
  }) async {
    final ffApiRequestBody = '''
{
    "strategy":"email",
    "email":"${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Wallet',
      apiUrl: 'https://in-app-wallet.thirdweb.com/api/v1/pregenerate',
      callType: ApiCallType.POST,
      headers: {
        'x-secret-key':
            'JMM8AnE0Ds0HmPGkR6S6Z0nEfSk7O8AJnF17dH3ygZgRLIuozUDecgRSRfCOUyD99VTPV7Ws5PdBiKK1jY2LJA',
        'Content-Type': 'application/json',
        'x-client-id': '9f170f432c8b5a5831cde8983a260b93',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? walletAddress(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.wallet.address''',
      ));
  static String? walletTimeCreate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.wallet.createdAt''',
      ));
}

class WalletAssetDataCall {
  static Future<ApiCallResponse> call({
    String? address = '0xcB1C1FdE09f811B294172696404e88E658659905',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Wallet Asset Data',
      apiUrl:
          'https://deep-index.moralis.io/api/v2.2/wallets/${address}/tokens?chain=eth',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'X-API-Key':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJub25jZSI6Ijg2OGYzNDViLTU2ZTQtNGJkNS1hM2Y1LTQzZTY4M2M5YmZhNiIsIm9yZ0lkIjoiMzc2NzM2IiwidXNlcklkIjoiMzg3MTQ4IiwidHlwZUlkIjoiNTAzZjJhNWUtZTU3MC00MjlkLWE1MTEtNTViNDJkYmQ5MjVmIiwidHlwZSI6IlBST0pFQ1QiLCJpYXQiOjE3MDc2NTI0MjcsImV4cCI6NDg2MzQxMjQyN30.5pPSaypoeTC0CwPtWOtR4l2MmZpvBhb4Xj1DvTe57QI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? symbol(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].symbol''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? logo(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].logo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? balance(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].balance_formatted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? price(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].usd_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? price24hChg(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].usd_price_24hr_percent_change''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? balanceUSD(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].usd_value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? balance24hChg(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].usd_value_24hr_usd_change''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? portfolioPercent(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].portfolio_percentage''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List? totalSupply(dynamic response) => getJsonField(
        response,
        r'''$.result[:].total_supply_formatted''',
        true,
      ) as List?;
  static List? totalSupplyPercent(dynamic response) => getJsonField(
        response,
        r'''$.result[:].percentage_relative_to_total_supply''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
