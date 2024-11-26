class DataItem {

  final String name;
  final int age;
  

  DataItem({required this.name, required this.age});

  factory DataItem.fromJson(Map<String, dynamic> json) {
    return DataItem(
      name: json['name'],
      age: json['age'],
    );
  }
}