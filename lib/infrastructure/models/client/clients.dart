// To parse this JSON data, do
//
//     final clientsResponse = clientsResponseFromJson(jsonString);

import 'dart:convert';

import 'package:app_prestamos/infrastructure/models/client/client_response.dart';
import 'package:app_prestamos/infrastructure/models/shared/link.dart';

ClientsResponse clientsResponseFromJson(String str) => ClientsResponse.fromJson(json.decode(str));

String clientsResponseToJson(ClientsResponse data) => json.encode(data.toJson());

class ClientsResponse {
    final bool success;
    final List<dynamic> errors;
    final Data data;
    final String message;

    ClientsResponse({
        required this.success,
        required this.errors,
        required this.data,
        required this.message,
    });

    factory ClientsResponse.fromJson(Map<String, dynamic> json) => ClientsResponse(
        success: json["success"],
        errors: List<dynamic>.from(json["errors"].map((x) => x)),
        data: Data.fromJson(json["data"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "errors": List<dynamic>.from(errors.map((x) => x)),
        "data": data.toJson(),
        "message": message,
    };
}

class Data {
    final int currentPage;
    final List<ClientResponse> data;
    final String firstPageUrl;
    final int from;
    final int lastPage;
    final String lastPageUrl;
    final List<Link> links;
    final dynamic nextPageUrl;
    final String path;
    final int perPage;
    final dynamic prevPageUrl;
    final int to;
    final int total;

    Data({
        required this.currentPage,
        required this.data,
        required this.firstPageUrl,
        required this.from,
        required this.lastPage,
        required this.lastPageUrl,
        required this.links,
        required this.nextPageUrl,
        required this.path,
        required this.perPage,
        required this.prevPageUrl,
        required this.to,
        required this.total,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        currentPage: json["current_page"],
        data: List<ClientResponse>.from(json["data"].map((x) => ClientResponse.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
    };
}

