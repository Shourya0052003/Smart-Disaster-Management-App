class Resource {
  final int id;
  final String name;
  final String description;

  Resource({required this.id, required this.name, required this.description});

  factory Resource.fromMap(Map<String, dynamic> json) {
    return Resource(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }
}
