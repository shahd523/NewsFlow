import 'Sources.dart';
class SourcesResponce {
  SourcesResponce({
      this.status, 
      this.code, 
      this.message, 
      this.sources,});

  SourcesResponce.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['sources'] != null) {
      sources = [];
      json['sources'].forEach((v) {
        sources?.add(Sources.fromJson(v));
      });
    }
  }
  String? status;
  String? code;
  String? message;
  List<Sources>? sources;
SourcesResponce copyWith({  String? status,
  String? code,
  String? message,
  List<Sources>? sources,
}) => SourcesResponce(  status: status ?? this.status,
  code: code ?? this.code,
  message: message ?? this.message,
  sources: sources ?? this.sources,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['code'] = code;
    map['message'] = message;
    if (sources != null) {
      map['sources'] = sources?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

