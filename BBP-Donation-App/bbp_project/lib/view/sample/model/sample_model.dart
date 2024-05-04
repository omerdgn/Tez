class SampleModel {
  String? username;
  int? age;
  bool? isMarried;

  SampleModel({this.username, this.age, this.isMarried});

  SampleModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    age = json['age'];
    isMarried = json['isMarried'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['age'] = this.age;
    data['isMarried'] = this.isMarried;
    return data;
  }
}
