class DonaterModel {
  int? id;
  String? name;
  String? surname;
  String? phoneNum;
  String? eMail;
  int? donationCount;
  int? totalDonationAmount;
  String? donaterUserName;
  String? donaterPassword;

  DonaterModel(
      {this.id,
      this.name,
      this.surname,
      this.phoneNum,
      this.eMail,
      this.donationCount,
      this.totalDonationAmount,
      this.donaterUserName,
      this.donaterPassword});

  DonaterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    surname = json['surname'];
    phoneNum = json['phoneNum'];
    eMail = json['eMail'];
    donationCount = json['donationCount'];
    totalDonationAmount = json['totalDonationAmount'];
    donaterUserName = json['donaterUserName'];
    donaterPassword = json['donaterPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['phoneNum'] = this.phoneNum;
    data['eMail'] = this.eMail;
    data['donationCount'] = this.donationCount;
    data['totalDonationAmount'] = this.totalDonationAmount;
    data['donaterUserName'] = this.donaterUserName;
    data['donaterPassword'] = this.donaterPassword;
    return data;
  }
}
