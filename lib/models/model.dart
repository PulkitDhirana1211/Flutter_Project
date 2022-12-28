import 'dart:convert';

List<Model> ModelFromJson(String str) =>
    List<Model>.from(json.decode(str).map((x) => Model.fromJson(x)));

String ModelToJson(List<Model> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Model {
  Model({
    required this.id,
    required this.name,
    required this.from,
    required this.priority,
  });

  String id;
  String name;
  String from;
  String priority;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        id: json["id"],
        name: json["name"],
        from: json["from"],
        priority: json["priority"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "from": from,
        "priority": priority,
      };
}
